{ ... }:
{
  vim.keymaps = [
    {
      key = "<C-p>";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope find_files<CR>";
      desc = "Find files wiht names";
    }
    {
      key = "<leader>fp";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope projects<CR>";
      desc = "Find Projects";
    }
    {
      key = "<leader>fm";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope media_files<CR>";
      desc = "Find Media Files";
    }
    {
      key = "<leader>fb";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope file_browser<CR>";
      desc = "File Browser";
    }
    {
      key = "<leader>fg";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope live_grep<CR>";
      desc = "Find files with Contents FZF";
    }
    {
      key = "<C-n>";
      mode = "n";
      silent = true;
      action = "<cmd>Neotree filesystem reveal left<CR>";
      desc = "Show filesystem";
    }
    {
      key = "<C-m>";
      mode = "n";
      silent = true;
      action = "<cmd>Neotree close<CR>";
      desc = "Close filesystem";
    }
    {
      key = "<K>";
      mode = "n";
      silent = true;
      action = "<cmd>vim.lsp.buf.hover<CR>";
      desc = "Hover Documentation";
    }
    {
      key = "gd";
      mode = "n";
      silent = true;
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      desc = "Go to Definition";
    }
    {
      key = "<leader>ca";
      mode = "n";
      silent = true;
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      desc = "LSP Code Action (Normal)";
    }
    {
      key = "<leader>ca";
      mode = "v";
      silent = true;
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      desc = "LSP Code Action (Visual)";
    }

  ];
}
