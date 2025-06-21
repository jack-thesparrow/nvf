{ pkgs, ... }:
{
  vim.extraPlugins = {
    typr = {
      package = pkgs.vimPlugins.nvzone-typr;
      setup = ''
        require("typr").setup({})
      '';
    };
  };
}
