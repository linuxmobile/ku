{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
    treesitter-context = {
      enable = true;
      settings = {
        enable = true;
        max_lines = 3;
      };
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };
  };
}
