{ ... }:
{
  vim.clipboard = {
    enable = true;
    providers.wl-copy.enable = true;
    registers = "unnamedplus";
  };
}
