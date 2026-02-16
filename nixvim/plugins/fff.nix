{pkgs, ...}: {
  plugins.fff = {
    enable = true;
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<leader>ff";
        mode = "n";
        desc = "FFF Finder";
      }
    ];
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "fff-snacks.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "madmaxieee";
        repo = "fff-snacks.nvim";
        rev = "main";
        hash = "sha256-h0HdCMMI72HrKnkk5e8eUOemy8zgVJYVfqbiKd6Uui4=";
      };
      dependencies = with pkgs.vimPlugins; [fff-nvim snacks-nvim];
      doCheck = false;
    })
  ];

  extraConfigLua = ''
    require("fff-snacks").setup()
  '';

  keymaps = [
    {
      key = "<leader>ff";
      mode = "n";
      action = "<cmd>FFFSnacks<CR>";
      options = {
        silent = true;
        desc = "FFF file picker";
      };
    }
    {
      key = "<leader>fg";
      mode = "n";
      action.__raw = "function() require('fff').find_in_git_root() end";
      options = {
        silent = true;
        desc = "Find files in git root";
      };
    }
    {
      key = "<leader>fr";
      mode = "n";
      action.__raw = "function() require('fff').scan_files() end";
      options = {
        silent = true;
        desc = "Rescan files";
      };
    }
    {
      key = "<leader>fs";
      mode = "n";
      action.__raw = "function() require('fff').refresh_git_status() end";
      options = {
        silent = true;
        desc = "Refresh git status";
      };
    }
    {
      key = "<leader>fd";
      mode = "n";
      action.__raw = "function() require('fff').find_files_in_dir(vim.fn.input('Directory: ')) end";
      options = {
        silent = true;
        desc = "Find files in directory";
      };
    }
    {
      key = "<leader>fc";
      mode = "n";
      action.__raw = "function() require('fff').change_indexing_directory(vim.fn.input('New directory: ')) end";
      options = {
        silent = true;
        desc = "Change indexing directory";
      };
    }
  ];
}
