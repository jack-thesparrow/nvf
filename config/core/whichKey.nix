{

  vim.binds.whichKey = {
    enable = true;

    register = {
      "<leader>f" = "+files"; # Telescope
      "<leader>s" = "+splits/session"; # Smart-splits + Session Manager
      "<leader>m" = "+minimap/buffers"; # Minimap + Bufferline move
      "<leader>b" = "+buffers"; # Bufferline nav
      "<leader>d" = "+debug"; # DAP
      "<leader>g" = "+git"; # Git actions
      "<leader>c" = "+code"; # LSP code actions
      "gz" = "+surround"; # Surround
    };

    setupOpts = {
      preset = "modern";
      notify = true;
      win = {
        border = "rounded";
      };
    };
  };

  vim.ui.borders.plugins.which-key = {
    enable = true;
    style = "rounded";
  };
}
