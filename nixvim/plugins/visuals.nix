{
  plugins = {
    colorizer = {
      enable = true;
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };
    illuminate = {
      enable = true;
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };
  };
}
