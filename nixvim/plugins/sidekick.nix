{
  plugins.sidekick = {
    enable = true;
    settings = {
      nes = {
        enabled = false;
      };
      cli = {
        mux = {
          backend = "zellij";
          enabled = true;
          create = "window";
        };
        tools = {
          opencode = {
            cmd = ["opencode"];
          };
          gemini = {
            cmd = ["gemini"];
          };
        };
      };
    };
  };

  keymaps = [
    {
      key = "<leader>ao";
      mode = "n";
      action.__raw = "function() require('sidekick').open('opencode') end";
      options = {
        desc = "Open OpenCode CLI";
      };
    }
    {
      key = "<leader>ag";
      mode = "n";
      action.__raw = "function() require('sidekick').open('gemini') end";
      options = {
        desc = "Open Gemini CLI";
      };
    }
  ];
}
