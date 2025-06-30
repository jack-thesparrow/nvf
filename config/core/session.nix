{ ... }:
{
  vim.session.nvim-session-manager = {
    enable = true;
    usePicker = true;
    mappings = {
      deleteSession = "<leader>sd";
      loadLastSession = "<leader>slt";
      saveCurrentSession = "<leader>sc";

    };
    setupOpts = {
      autoload_mode = "Disabled";
      autosave_last_session = true;
      autosave_ignore_buftypes = [
        "terminal"
        "quickfix"
        "nofile"
        "help"
      ];

      autosave_ignore_dirs = [
        "~/"
        "~/Projects"
        "~/Downloads/"
        "~/temp"
        "/tmp"
      ];
    };
  };
}
