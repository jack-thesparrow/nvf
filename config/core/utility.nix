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
    motion = {
      flash-nvim = {
        enable = true;
        mappings = {
          jump = "s"; # jump key
          remote = "r"; # remote jump
          toggle = "<c-s>"; # toggle search
          treesitter = "S"; # Treesitter jump
          treesitter_search = "R"; # Treesitter search
        };
        setupOpts = { }; # use defaults, optional
      };
      precognition = {
        enable = true;

        setupOpts = {
          # Optional: disable in certain filetypes
          disabled_fts = [ "startify" ];

          # Optional: customize how hints look
          highlightColor = {
            link = "Comment";
          };

          # Optional: whether hints show immediately
          startVisible = true;

          # Optional: hide empty lines if no hint
          showBlankVirtLine = true;

          # Optional: custom hints or priorities
          hints = {
            f = {
              prio = 10;
              text = "f";
            };
            F = {
              prio = 10;
              text = "F";
            };
            t = {
              prio = 10;
              text = "t";
            };
            T = {
              prio = 10;
              text = "T";
            };
          };

          # Optional: gutter hints (rarely needed)
          gutterHints = { };
        };
      };
    };
  };
}
