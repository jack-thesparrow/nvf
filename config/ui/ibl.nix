{ pkgs, ... }:
{
  vim.visuals = {
    indent-blankline = {
      enable = true;

      setupOpts = { };
    };
  };
}
