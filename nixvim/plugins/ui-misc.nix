{
  plugins.navic = {
    enable = true;
    lazyLoad.settings.event = "LspAttach";
  };

  plugins.fastaction = {
    enable = true;
    lazyLoad.settings.event = "LspAttach";
  };

  plugins.lspsaga = {
    enable = true;
    settings = {
      ui.border = "single";
      hover.enable = true;
      lightbulb.enable = false;
    };
    lazyLoad.settings.event = "LspAttach";
  };

  plugins.dressing = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
  };

  keymaps = [
    {
      key = "<leader>k";
      mode = "n";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        silent = true;
        desc = "Hover Docs";
      };
    }
  ];
}
