{ lib, ... }:
{
  vim = {
    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        close = "<C-e>";
        complete = "<C-Space>";
        confirm = "<CR>";
        next = "<Tab>";
        previous = "<S-Tab>";
        scrollDocsDown = "<C-f>";
        scrollDocsUp = "<C-d>";
      };
      setupOpts = lib.generators.mkLuaInline ''
        {
          enabled = function()
            return vim.bo.filetype ~= "typr"
          end,

          signature = {
            enabled = true,
          },

          completion = {
            documentation = {
              auto_show = true,
            },
            menu = {
              auto_show = true,
            },
          },
        }
      '';
      sourcePlugins = {
        emoji = {
          enable = true;
        };
        ripgrep = {
          enable = true;
        };
        spell = {
          enable = true;
        };
      };
    };
  };
}
