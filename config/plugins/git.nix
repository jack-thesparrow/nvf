{ ... }:

{
  vim = {

    git = {
      enable = true;
      gitsigns = {
        enable = true;
        codeActions.enable = true; # Was too intrusive
        mappings = {
          blameLine = "<leader>gl";
          toggleBlame = "<leader>tb";
        };
      };
    };

    pluginRC.gitsigns = ''
      local gs = require("gitsigns")
      gs.setup {
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol",
          delay = 1000,
          ignore_whitespace = false,
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        code_actions = { enable = true },
        on_attach = function(bufnr)
          local map = vim.keymap.set
          map('n', '<leader>hb', gs.blame_line, { buffer = bufnr, desc = "Toggle Git blame line" })
        end,
      }
    '';
  };
}
