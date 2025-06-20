{ ... }:
{
  vim.session.nvim-session-manager = {
    enable = true;
    mappings = {
      deleteSession = "<leader>sd";
      loadLastSession = "<leader>slt";
      saveCurrentSession = "<leader>sc";

    };
    setupOpts = {
      autoload_mode = "LastSession";
      autosave_last_session = true;
    };
  };
}
