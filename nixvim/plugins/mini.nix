{
  plugins = {
    mini = {
      enable = true;
      mockDevIcons = true;
      modules = {
        icons = {};
        pairs = {};
        diff = {};
        comment = {
          mappings = {
            comment = "gc";
            comment_line = "<C-c>";
            comment_visual = "gc";
            textobject = "gc";
          };
          options = {
            ignore_blank_line = false;
            pad_comment_parts = true;
            start_of_line = false;
          };
        };
        jump2d = {
          allowed_lines = {
            blank = true;
            cursor_after = true;
            cursor_at = true;
            cursor_before = true;
            fold = true;
          };
          allowed_windows = {
            current = true;
            not_current = false;
          };
          labels = "abcdefghijklmnopqrstuvwxyz";
          mappings = {
            start_jumping = "<CR>";
          };
          silent = false;
          view = {
            dim = false;
            n_steps_ahead = 0;
          };
        };
        cursorword = {};
        tabline = {
          show_icons = false;
          set_vim_settings = false;
        };
        files = {
          windows = {
            preview = true;
            width_preview = 50;
          };
          mappings = {
            close = "<Esc>";
            go_in = "l";
            go_in_plus = "<CR>";
            go_out = "h";
            go_out_plus = "H";
            synchronize = "=";
          };
          options = {
            use_as_default_explorer = true;
          };
        };
        surround = {
          mappings = {
            add = "ms";
            delete = "md";
            replace = "mr";
            find = "";
            find_left = "";
            highlight = "";
            update_n_lines = "";
          };
        };
        statusline = {
          use_icons = true;
          set_vim_settings = false;
        };
      };
    };
  };

  keymaps = [
    {
      key = "<Tab>";
      mode = "n";
      action = "<cmd>bnext<CR>";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }
    {
      key = "<S-Tab>";
      mode = "n";
      action = "<cmd>bprevious<CR>";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      key = "<leader>x";
      mode = "n";
      action = "<cmd>bdelete<CR>";
      options = {
        silent = true;
        desc = "Close buffer";
      };
    }
    {
      key = "<C-n>";
      mode = "n";
      action.__raw = ''
        function()
          local MiniFiles = require('mini.files')
          if not MiniFiles.close() then
            MiniFiles.open()
          end
        end
      '';
      options = {
        silent = true;
        desc = "Toggle file explorer";
      };
    }
  ];
}
