{ ... }:
{
  vim.debugger = {
    nvim-dap = {
      enable = true;

      ui = {
        enable = true;
        autoStart = true;
      };

      mappings = {
        continue = "<leader>dc";
        goDown = "<leader>dvi";
        goUp = "<leader>dvo";
        hover = "<leader>dh";
        restart = "<leader>dR";
        runLast = "<leader>d.";
        runToCursor = "<leader>dgk";
        stepBack = "<leader>dgk";
        stepInto = "<leader>dgo";
        stepOver = "<leader>dgj";
        terminate = "<leader>dq";
        toggleBreakpoint = "<leader>db";
        toggleDapUI = "<leader>du";
        toggleRepl = "<leader>dr";
      };
    };
  };
}
