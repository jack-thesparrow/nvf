{ pkgs, ... }:
{
  vim.extraPlugins.typr = {
    package = pkgs.vimPlugins.nvzone-typr;
    setup = ''
      require("typr").setup({})

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "typr",
        callback = function()
          local cmp = require("cmp")
          cmp.setup.buffer({
            completion = {
              kind_resolution = false,
              semantic_token_resolution = false,
            },
          })
          vim.notify("Typr: kind + semantic resolution OFF (buffer-local)")
        end,
      })
    '';
  };
}
