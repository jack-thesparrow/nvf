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

      setupOpts = {
        cmdline.keymap.preset = "default";

        completion = {
          documentation.auto_show = true;
          menu.auto_show = true;
        };

        sources = {
          # ✅ disable Snippets globally
          transform_items = lib.generators.mkLuaInline ''
            function(_, items)
              return vim.tbl_filter(function(item)
                return item.kind ~= require('blink.cmp.types').CompletionItemKind.Snippet
              end, items)
            end
          '';

          providers = {
            lsp = {
              name = "LSP";
              module = "blink.cmp.sources.lsp";
              transform_items = lib.generators.mkLuaInline ''
                function(_, items)
                  if vim.bo.filetype == "typr" then
                    return {} -- disable LSP completions for typr
                  end
                  return items
                end
              '';
            };
          };
        };
      };

      sourcePlugins = {
        emoji.enable = true;
        ripgrep.enable = true;
        spell.enable = true;
      };
    };
  };
}
