{pkgs, ...}: {
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
    fugitive = {
      enable = true;
      lazyLoad.settings.cmd = "Git";
    };
  };
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "diffs.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "barrettruth";
        repo = "diffs.nvim";
        tag = "v0.3.0";
        hash = "sha256-e5P5NgJrVBSgfsAy0FBW0C6X3/0+Ko8VlK49RMaH99k=";
      };
    })
  ];

  extraConfigLua = ''
    vim.g.diffs = {
      fugitive = true,
    }
  '';
}
