{ pkgs, lib, ... }:
let
  treesitterLanguages = [
    "bash"
    "clang"
    "css"
    "go"
    "html"
    "java"
    #"js"
    #"json"
    "kotlin"
    "lua"
    "markdown"
    "nix"
    "python"
    "rust"
    "sql"
    #"toml"
    #"tsx"
    #"typescript"
    "yaml"
    "zig"

    # Rarely Used or Niche Today
    # "assembly"
    # "astro"
    # "clojure"
    # "elixir"
    # "elm"
    # "erlang"
    # "fennel"
    # "fish"
    # "haskell"
    # "julia"
    # "latex"
    # "ocaml"
    # "php"
    # "r"
    # "ruby"
    # "scala"
    # "svelte"
    # "swift"
    # "typst"
    # "vue"

  ];

  treeSitterEnables = builtins.listToAttrs (
    builtins.map
      (lang: {
        name = lang;
        value = {
          treesitter.enable = true;
        };
      })
      treesitterLanguages
  );
in
{
  vim = {
    treesitter = {
      enable = true;
      fold = false;

      highlight = {
        enable = true;
      };

      indent.enable = true;

      addDefaultGrammars = true;

      autotagHtml = true;

    };
    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    } // treeSitterEnables;
  };
}
