{
  vim = {
    binds.hardtime-nvim = {
      enable = true;

      setupOpts = {
        max_count = 5;
        restriction_mode = "hint_and_block";
        disable_mouse = true;
      };
    };
  };
}
