{
  plugins.which-key = {
    enable = true;
    settings.preset = "helix";
    lazyLoad.settings.event = "DeferredUIEnter";
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>b";
      hidden = true;
    }
    {
      __unkeyed-1 = "<leader>bm";
      hidden = true;
    }
    {
      __unkeyed-1 = "<leader>bs";
      hidden = true;
    }
    {
      __unkeyed-1 = "<leader>bsi";
      hidden = true;
    }
  ];
}
