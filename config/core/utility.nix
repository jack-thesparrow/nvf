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

    smart-splits = {
      enable = true;

      keymaps = {
        move_cursor_down = "<C-j>";
        move_cursor_left = "<C-h>";
        move_cursor_right = "<C-l>";
        move_cursor_up = "<C-k>";
        move_cursor_previous = "<C-\\>";

        resize_down = "<A-j>";
        resize_left = "<A-h>";
        resize_right = "<A-l>";
        resize_up = "<A-k>";

        swap_buf_down = "<leader><leader>j";
        swap_buf_left = "<leader><leader>h";
        swap_buf_right = "<leader><leader>l";
        swap_buf_up = "<leader><leader>k";
      };

      # Optional extra options passed to smart-splits.setup()
      setupOpts = { };
    };
    surround = {
      enable = true;
      useVendoredKeybindings = true;
      setupOpts = {
        keymaps = {
          change = "gzr";
          change_line = "gZR";
          delete = "gzd";
          insert = "<C-g>z";
          insert_line = "<C-g>Z";
          normal = "gz";
          normal_cur = "gZ";
          normal_cur_line = "gZZ";
          normal_line = "gzz";
          visual = "gz";
          visual_line = "gZ";
        };
      };
    };
  };
}
