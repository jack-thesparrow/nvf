{ pkgs, lib, ... }:
{
  vim = {
    statusline = {
      lualine = {
        enable = true;
        theme = "dracula";
      };
    };
  };
}
