{ pkgs, ... }:
{
  vim.utility = {
    preview = {
      glow.enable = true;
      glow.mappings.openPreview = "<leader>mg";
      markdownPreview = {
        enable = true;
        alwaysAllowPreview = true;
        autoClose = true;
        autoStart = true;
      };
    };
    snacks-nvim.enable = true;

    images = {
      image-nvim = {
        enable = true;
        setupOpts = {
          backend = "kitty";
          editorOnlyRenderWhenFocused = false;
          integrations = {
            markdown = {
              enable = true;
              clearInInsertMode = true;
              downloadRemoteImages = true;
            };
          };
        };
      };
      img-clip.enable = true;
    };

    outline = {
      aerial-nvim = {
        enable = true;
        mappings.toggle = "<leader>g0";
      };
    };
  };
}
