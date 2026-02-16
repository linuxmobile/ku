{pkgs, ...}: {
  plugins.fff = {
    enable = true;
    package = pkgs.vimUtils.buildVimPlugin {
      pname = "fff.nvim";
      version = "unstable";
      src = pkgs.fetchFromGitHub {
        owner = "dmtrKovalenko";
        repo = "fff.nvim";
        rev = "main";
        hash = "sha256-fPUVa0msPVVtQP/s1DfYvoEnJFMIpfSR2EU2XmCUiqA=";
      };

      postPatch = ''
        mkdir -p target/release
        cp ${pkgs.fetchurl {
          url = "https://github.com/dmtrKovalenko/fff.nvim/releases/download/29e13ac/x86_64-unknown-linux-gnu.so";
          hash = "sha256-gFu4Sz/oPgj0aiEk/LoXl56jHT0hgvwbcSp5L+uJOtk=";
        }} target/release/libfff_nvim.so
      '';

      doCheck = false;
      doInstallCheck = false;
    };

    settings = {
      lazy_sync = true;
      preview = {
        chunk_size = 4096;
      };
      keymaps = {
        close = [
          "<Esc>"
        ];
        move_down = [
          "Down"
          "<C-j>"
        ];
        move_up = [
          "Up"
          "<C-k>"
        ];
        open_split = "<C-s>";
        open_tab = "<C-t>";
        open_vsplit = "<C-v>";
        select_file = "<CR>";
      };
      layout = {
        height = 0.8;
        preview_position = "right";
        width = 0.8;
      };
      max_results = 100;
    };
  };

  keymaps = [
    {
      key = "<leader>ff";
      mode = "n";
      action.__raw = "function() require('fff').find_files() end";
      options = {
        silent = true;
        desc = "FFF file picker";
      };
    }
    {
      key = "<leader>/";
      mode = "n";
      action.__raw = "function() require('fff').live_grep() end";
      options = {
        silent = true;
        desc = "Live grep";
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
