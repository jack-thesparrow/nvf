{
  vim.keymaps = [
    {
      key = "<leader>ff";
      mode = "n";
      silent = true;
      action = "<cmd>Telescope find_files<CR>";
      desc = "Find files with names";
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
      key = "<leader>nn";
      mode = "n";
      silent = true;
      action = "<cmd>Neotree toggle<CR>";
      desc = "Toggle Neotree filesystem show";
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
    {
      key = "<leader>sm";
      mode = "n";
      silent = true;
      action = "<cmd>Session<CR>";
      desc = "Open Session Manager";
    }
    # Smart Split Keybinds
    {
      key = "<leader>sv";
      mode = "n";
      silent = true;
      action = "<cmd>vsplit<CR>";
      desc = "Split Vertical";
    }
    {
      key = "<leader>sh";
      mode = "n";
      silent = true;
      action = "<cmd>split<CR>";
      desc = "Split Horizontal";
    }
    {
      key = "<leader>sq";
      mode = "n";
      silent = true;
      action = "<cmd>q<CR>";
      desc = "Close Split";
    }
    {
      key = "<leader>ht";
      mode = "n";
      silent = true;
      action = "<cmd>Hardtime toggle<CR>";
      desc = "Toggle HardTime";
    }
    {
      key = "<leader>tc";
      mode = "n";
      silent = true;
      action = "<cmd>TSContext toggle<CR>";
      desc = "Toggle the Treesitter context";
    }
    {
      key = "<leader>tt";
      mode = [
        "n"
        "t"
      ];
      silent = true;
      action = "<cmd>FloatermToggle<CR>";
      desc = "Toggle Floaterm";
    }
  ];
}
