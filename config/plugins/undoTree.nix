{ pkgs, ... }:
{
  vim = {
    startPlugins = [
      pkgs.vimPlugins.undotree
    ];

    pluginRC.undotree = ''
      -- Lua mapping
      vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)

      -- Global variables: set them with vim.g
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_SplitWidth = 25
      vim.g.undotree_DiffpanelHeight = 12
      vim.g.undotree_DiffAutoOpen = 1
      vim.g.undotree_SetFocusWhenToggle = 1

      vim.g.undotree_TreeNodeShape = '*'
      vim.g.undotree_TreeVertShape = '|'
      vim.g.undotree_TreeSplitShape = '/'
      vim.g.undotree_TreeReturnShape = '\\'

      vim.g.undotree_RelativeTimestamp = 1
      vim.g.undotree_HighlightChangedText = 1
      vim.g.undotree_HighlightChangedWithSign = 1
      vim.g.undotree_HighlightSyntaxAdd = "DiffAdd"
      vim.g.undotree_HighlightSyntaxChange = "DiffChange"
      vim.g.undotree_HighlightSyntaxDel = "DiffDelete"

      vim.g.undotree_HelpLine = 1
      vim.g.undotree_CursorLine = 1

      -- Persistent undo in Lua:
      if vim.fn.has("persistent_undo") == 1 then
        local target_path = vim.fn.expand('~/.undodir')
        if vim.fn.isdirectory(target_path) == 0 then
          vim.fn.mkdir(target_path, "p", "0700")
        end
        vim.opt.undodir = target_path
        vim.opt.undofile = true
      end
    '';
  };
}
