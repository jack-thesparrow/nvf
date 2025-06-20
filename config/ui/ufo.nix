{ lib, ... }:
{
  vim.ui.nvim-ufo = {
    enable = true;
    setupOpts = {
      provider_selector = lib.generators.mkLuaInline ''
        function(_, filetype, buftype)
          return {'treesitter', 'indent'}
        end
      '';
    };
  };
}
