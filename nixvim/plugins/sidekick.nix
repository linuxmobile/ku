{pkgs, ...}: {
  plugins.sidekick = {
    package = pkgs.vimUtils.buildVimPlugin {
      inherit (pkgs.vimPlugins.sidekick-nvim) pname version src;
      doCheck = false;
    };
    enable = true;
    settings = {
      opts.nes.enabled = false;
      cli = {
        mux = {
          backend = "zellij";
          enabled = true;
          create = "window";
        };
        tools = {
          opencode = {cmd = ["opencode"];};
          gemini = {cmd = ["gemini"];};
        };
      };
    };
  };

  dependencies = {
    opencode.enable = false;
    gemini.enable = false;
    copilot.enable = false;
    claude-code.enable = false;
  };

  keymaps = [
    {
      key = "<leader>ao";
      mode = "n";
      action.__raw = "function() require('sidekick').open('opencode') end";
      options = {desc = "Open OpenCode CLI";};
    }
    {
      key = "<leader>ag";
      mode = "n";
      action.__raw = "function() require('sidekick').open('gemini') end";
      options = {desc = "Open Gemini CLI";};
    }
  ];
}
