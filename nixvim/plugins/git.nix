{
  plugins = {
    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = false;
        sign_priority = 6;
        update_debounce = 100;
        status_formatter = null;
      };
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };
  };
}
