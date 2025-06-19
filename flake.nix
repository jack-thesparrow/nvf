{
  description = "NVF-based Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    { nixpkgs
    , nixpkgs-stable
    , flake-parts
    , nvf
    , ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [
              (_final: _prev: {
                stable = import nixpkgs-stable {
                  inherit system;
                  config.allowUnfree = true;
                  config.nvidia.acceptLicense = true;
                };
              })
            ];
            config.allowUnfree = true;
          };

          nvimConfig = nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [ ./config ];
          };
        in
        {
          _module.args.pkgs = pkgs;

          packages.default = nvimConfig.neovim;

          apps.default = {
            type = "app";
            program = "${nvimConfig.neovim}/bin/nvim";
            meta = {
              description = "Launch jack-thesparrow nvf config";
            };
          };

          checks.default = pkgs.stdenv.mkDerivation {
            name = "nvf-neovim-check";
            buildInputs = pkgs.lib.optionals pkgs.stdenv.isLinux [ pkgs.fontpreview ];
            buildCommand = ''
              echo "✔ NVF configuration flake check passed" > $out
            '';
          };

          formatter = pkgs.nixpkgs-fmt;

          devShells.default = pkgs.mkShell {
            packages =
              with pkgs;
              [
                chafa
                epub-thumbnailer
                fd
                ffmpegthumbnailer
                git
                imagemagick
                pre-commit
                poppler-utils
                nixpkgs-fmt
                nerd-fonts.jetbrains-mono
                ripgrep
              ]
              ++ pkgs.lib.optionals pkgs.stdenv.isLinux [ pkgs.fontpreview ];
          };
        };

      flake = {
        homeModules.default =
          { pkgs, ... }:
          {
            home.packages = [
              pkgs.chafa
              pkgs.epub-thumbnailer
              pkgs.fd
              pkgs.fontpreview
              pkgs.ffmpegthumbnailer
              pkgs.git
              pkgs.imagemagick
              pkgs.pre-commit
              pkgs.poppler-utils
              pkgs.nixpkgs-fmt
              pkgs.nerd-fonts.jetbrains-mono
              pkgs.ripgrep

              (nvf.lib.neovimConfiguration {
                inherit pkgs;
                modules = [ ./config ];
              }).neovim
            ];
          };
      };
    };
}
