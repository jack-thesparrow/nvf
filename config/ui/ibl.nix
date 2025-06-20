{
  vim.visuals = {
    indent-blankline = {
      enable = true;

      setupOpts = {
        exclude = {
          buftypes = [ "terminal" ];
          filetypes = [
            "ts_context"
            "dashboard"
            "nvimtree"
          ];
        };
      };
    };
  };
}
