<h1 align="center">
  <a href="#"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/></a>
  <br><br>
  <div align="center">
    <p>
      <!-- ✅ Your existing badges -->
      <a href="https://github.com/jack-thesparrow/schrovimger/issues">
        <img src="https://img.shields.io/github/issues/jack-thesparrow/schrovimger?color=fab387&labelColor=303446&style=for-the-badge">
      </a>
      <a href="https://github.com/jack-thesparrow/schrovimger/pulse">
        <img alt="Last commit" src="https://img.shields.io/github/last-commit/jack-thesparrow/schrovimger?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41"/>
      </a>
      <a href="https://github.com/jack-thesparrow/schrovimger/stargazers">
        <img src="https://img.shields.io/github/stars/jack-thesparrow/schrovimger?color=ca9ee6&labelColor=303446&style=for-the-badge">
      </a>
      <a href="https://github.com/jack-thesparrow/schrovimger">
        <img src="https://img.shields.io/github/repo-size/jack-thesparrow/schrovimger?color=ea999c&labelColor=303446&style=for-the-badge">
      </a>
      <a href="https://github.com/jack-thesparrow/schrovimger/blob/main/LICENSE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=ca9ee6&colorA=313244&colorB=cba6f7"/>
      </a>
    </p>
  </div>
</h1>
<h1 align = "center">Schrovimger: A Standalone NVF NeoVim Configuration</h1>
<h3 align = "center"></h3>

</h1>

## Whats This All About ?

Schrovimger is a custom NeoVim configuration, to smoothen out your development
workflow providing an unparalled coding experience.

<img src = "assets/code.png" alt="nvim">

<details>
    <summary>More!</summary>
    <img src = "assets/alpha.png">
    <img src = "assets/telescope.png">
</details>

## Features

- **Text-Editor/IDE**: Schrovimger aims to provide a non-bloated, minimal and
  distraction-free code writing experience.

- **NVF Integration:** Build upon the
  [NVF](https://github.com/NotAShelf/nvf.git) Framework which gives it a solid
  base for your personal configuration.

- **Customization:** The [NVF](https://github.com/NotAShelf/nvf.git) Framework
  provides customization options that are unrestricted, allowing it to be
  tailored according to your preferences.

- **Plugin Supports:** [NVF](https://github.com/NotAShelf/nvf.git) has various
  plugins also allowing to add your custom plugins.

## Installation

Getting Schrovimger installed and running on your system is a **easy AF**.
Simply follow the installation guide below and Schrovimger will get running in
no time.

### InCase you'd like to test run:

```shell
nix run github:jack-thesparrow/schrovimger
```

Or if your have `cachix` installed and configured properly, you can skip the
compilation time by using the cachix binary cache, that way you will only have
to download the binaries.

```shell
nix run github:jack-thesparrow/schrovimger \
--option extra-substituters https://schrovimger.cachix.org \
--option extra-trusted-public-keys "schrovimger.cachix.org-1:wUDg44FWjTBa3CutgbINFRAEb8N5P2yTWze45jcGvMY="
```

### How to install Schrovimger in your system

To include the configuration as a replacement of Vanilla Neovim, you must first
add it as input in your main `flake.nix` of your NixOS system:

```nix
inputs.nvf = {
    url = "github:jack-thesparrow/schrovimger";
    inputs.nixpkgs.follows = "nixpkgs";
}
```

Then expose the input into your outputs as:

```nix
outputs = {
    ...
    nvf,
    ...
}@inputs:
```

This allows you to install Schrovimger as both: NixOS package and as a
Home-Manager Module. I recommend you to install this configuration as a
Home-Manager module.

Now add `inputs` into your `extraSpecialArgs` of your Home-Manager
Configuration:

```nix
  homeConfigurations = {
    rahul = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./home/home.nix
      ];
      extraSpecialArgs = {
        inherit inputs;
      };
    };
  };
};
```

Here is a sample `neovim.nix` module which you can import into your Home-Manager
Configuration and then rebuild your system.

```nix
{
  pkgs,
  inputs,
  ...
}@args:
{
  home.packages = [
    inputs.nvf.packages.${pkgs."x86_64-linux"}.default
  ];
}
```

<I>And now you have successfully installed Schrovimger NVF NeoVim
Configuration!</I>

## Quick Start Guide

- `config/core` - contains all the core Vim Settings.

- `config/plugins` - contains NeoVim Plugins via NVF.

- `config/themes` - contains Theme options.

- `config/ui` - contains UI and Visual Options.

## Contribution

Contributions are welome! Feel Free to
[open an issue](https://github.com/jack-thesparrow/schrovimger/issues) to report
problems, suggest improvements, or submit pull requests to add new features to
Schrovimger.

## Support

Encountered an issue or have a question? Visit the
[Issue Tracker](https://github.com/jack-thesparrow/schrovimger/issues)

## License

This project is licensed under the
[MIT License](https://github.com/jack-thesparrow/schrovimger/blob/main/LICENSE).
See the
[LICENSE](https://github.com/jack-thesparrow/schrovimger/blob/main/LICENSE) file
for more details.

## Acknowledgements

- [GitHub - NotAShelf/nvf](https://github.com/NotAShelf/nvf.git) - For the
  excellent framework.

- [Sly-Harvey · GitHub](https://github.com/Sly-Harvey) - For your clean and
  readable nixvim config which i used for reference.

- [GitHub - elythh/nixvim: ❄️ my neovim config using nixvim](https://github.com/elythh/nixvim) -
  For features to include.

- [zethra](https://git.sr.ht/~zethra/) - For your term2alpha tool, with which i
  configured my alpha-dashboard.
