{ ... }:
{
  vim.terminal.toggleterm = {
    enable = true;
    mappings.open = "<C-t>";

    lazygit = {
      enable = true;
      mappings.open = "<leader>gg";
    };

    setupOpts = {
      open_mapping = "<C-t>";
      direction = "horizontal";
      winbar = {
        enabled = true;
        #name_formatter = "function(term) return 'Terminal #' .. term.id end";
      };
    };
  };
}
