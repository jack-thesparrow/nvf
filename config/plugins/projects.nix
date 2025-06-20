{ ... }:
{
  vim.projects = {
    project-nvim = {
      enable = true;
      setupOpts = {
        detection_methods = [
          "lsp"
          "pattern"
        ];
        patterns = [
          ".git"
          "flake.nix"
          "Cargo.toml"
          "CMakeLists.txt"
          "Makefile"
          "stack.yaml"
          "*.cabal"
          "package.yaml"
          "package.json"
          "yarn.lock"
          ".project"
          ".solution"
          ".solution.toml"
        ];
        exclude_dirs = [
          "~/"
          "~/.config"
          "~/.nixpkgs"
        ];
        manual_mode = true;
        silent_chdir = true;
        scope_chdir = "global";
        exclude_chdir = {
          filetype = [
            ""
            "OverseerList"
            "alpha"
          ];
          buftype = [
            "nofile"
            "terminal"
          ];
        };
      };
    };
  };
}
