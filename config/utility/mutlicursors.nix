{
  vim.utility.multicursors = {
    enable = true;
    setupOpts = {
      DEBUG_MODE = false; # optional
      create_commands = true; # optional
      generate_hints = {
        config = {
          column_count = null;
          max_hint_length = 25;
        };
        extend = true;
        insert = true;
        normal = true;
      };
      hint_config = {
        float_opts = {
          border = "rounded"; # or "none"
        };
        position = "bottom";
      };
      mode_keys = {
        append = "a";
        change = "c";
        extend = "e";
        insert = "i";
      };
      nowait = true;
      updatetime = 50;
    };
  };
}
