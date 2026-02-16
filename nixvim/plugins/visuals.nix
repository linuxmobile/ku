{
  plugins.colorizer = {
    enable = true;
    lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
  };

  plugins.illuminate = {
    enable = true;
    lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
  };
}
