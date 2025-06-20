{ ... }:
{
  vim.minimap = {
    #enable = true;
    codewindow = {
      enable = true;
      mappings = {
        open = "<leader>mo";
        close = "<leader>mc";
        toggle = "<leader>mm";
        toggleFocus = "<leader>mf";
      };
    };
  };
}
