{
  plugins.snacks = {
    enable = true;
    settings = {
      animate.enabled = true;
      dim.enabled = true;
      indent.enabled = true;
      scroll.enabled = true;
      picker.enabled = true;
    };
  };

  keymaps = [
    {
      key = "<leader>b";
      mode = "n";
      action.__raw = "function() require('snacks').picker.buffers() end";
      options = {
        silent = true;
        desc = "Find buffers";
      };
    }
    {
      key = "<leader>/";
      mode = "n";
      action.__raw = "function() require('snacks').picker.grep() end";
      options = {
        silent = true;
        desc = "Live grep";
      };
    }
    {
      key = "<leader>fg";
      mode = "n";
      action.__raw = "function() require('snacks').picker.git_status() end";
      options = {
        silent = true;
        desc = "Git status";
      };
    }
  ];
}
