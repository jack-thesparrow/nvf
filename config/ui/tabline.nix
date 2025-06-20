{ ... }:

{
  vim.tabline.nvimBufferline = {
    enable = true;
    #mode = "buffers";
    setupOpts = {
      options = {
        show_buffer_close_icons = true;
        show_close_icon = false;
        show_filename_only = true;
        numbers = "none";
        modified_icon = "●";
        show_modified_icon = {
          __raw = ''
            function(buf)
                        return buf.modified
                      end'';
        };
        show_tab_indicators = false;
        separator_style = "thin";
        diagnostics = false;
        indicator = {
          style = "none";
        };
      };
    };
    # Buffer Navigation
    mappings = {
      cycleNext = "<leader>bl";
      cyclePrevious = "<leader>bh";
      closeCurrent = "<leader>bx";
      pick = "<leader>bp";
      # ReOrder the tabs
      moveNext = "<leader>me";
      movePrevious = "<leader>mq";
    };
  };
}
