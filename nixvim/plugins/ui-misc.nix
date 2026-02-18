{
  plugins = {
    navic = {
      enable = true;
      lazyLoad.settings.event = "LspAttach";
    };

    fastaction = {
      enable = true;
      lazyLoad.settings.event = "LspAttach";
    };

    lspsaga = {
      enable = true;
      settings = {
        ui.border = "single";
        hover.enable = true;
        lightbulb.enable = false;
      };
      lazyLoad.settings.event = "LspAttach";
    };

    dressing = {
      enable = true;
      lazyLoad.settings.event = "DeferredUIEnter";
    };

    wrapping = {
      enable = true;
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };
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
