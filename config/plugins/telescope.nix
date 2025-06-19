{ pkgs, ... }:

{
  config.vim = {
    telescope = {
      enable = true;

      extensions = [
        {
          name = "ui-select";
          packages = [ pkgs.vimPlugins.telescope-ui-select-nvim ];
          setup = {
            "ui-select" = { };
          };
        }
        {
          name = "file-browser";
          packages = [ pkgs.vimPlugins.telescope-file-browser-nvim ];
          setup = {
            "file-browser" = {
              theme = "ivy";
              hijack_netrw = true;
            };
          };
        }
        {
          name = "media-files";
          packages = [ pkgs.vimPlugins.telescope-media-files-nvim ];
          setup = {
            "media-files" = {
              filetypes = [
                "png"
                "webp"
                "jpg"
                "jpeg"
              ];
              find_cmd = "rg";
            };
          };
        }
      ];
    };
  };
}
