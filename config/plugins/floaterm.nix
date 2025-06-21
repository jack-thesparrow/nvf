{ pkgs, ... }:
{
  vim.extraPlugins = {
    floaterm = {
      package = pkgs.vimPlugins.vim-floaterm;
    };
  };
}
