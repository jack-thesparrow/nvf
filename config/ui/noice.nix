{ pkgs, ... }:
{
  vim = {
    startPlugins = [
      pkgs.vimPlugins.noice-nvim
      pkgs.vimPlugins.nui-nvim
      pkgs.vimPlugins.nvim-notify
      pkgs.vimPlugins.nvim-treesitter
    ];

    pluginRC.nvim-notify = ''
      require("notify").setup({
        background_colour = "#000000",
        stages = "fade_in_slide_out"
      })
    '';

    pluginRC.noice-nvim = ''
      local noice = require("noice")
      noice.setup({
        lsp = {
          progress = { enabled = true },
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
        },
        views = {
          cmdline_popup = {
            position = {
              row = "40%",
              col = "50%",
            },
            size = {
              width = 60,
              height = "auto",
            },
          },
          popupmenu = {
            relative = "editor",
            position = {
              row = 8,
              col = "50%",
            },
            size = {
              width = 60,
              height = 10,
            },
            border = {
              style = "rounded",
              padding = { 0, 1 },
            },
            win_options = {
              winhighlight = {
                Normal = "Normal",
                FloatBorder = "DiagnosticInfo",
              },
            },
          },
        },
        routes = {
          {
            view = "notify",
            filter = {
              event = "msg_showmode"
            },
          },
          {
            filter = {
              event = "lsp",
              kind = "progress",
              cond = function(message)
                local client = vim.tbl_get(message.opts, "progress", "client")
                return client == "lua_ls" or client == "null-ls"
              end,
            },
            opts = { skip = true },
          },
        },
      })
    '';
  };
}
