{
  keymaps = [
    {
      key = "<leader>tc";
      mode = "n";
      action = "<cmd>TSContextToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle Treesitter Context";
      };
    }
    {
      key = "mm";
      mode = "n";
      action = "%";
      options = {
        silent = true;
        desc = "Goto matching bracket";
      };
    }
    {
      key = "mi";
      mode = "n";
      action = "vi";
      options = {
        silent = true;
        desc = "Select inside object";
      };
    }
    {
      key = "ma";
      mode = "n";
      action = "va";
      options = {
        silent = true;
        desc = "Select around object";
      };
    }
    {
      key = "j";
      mode = ["n" "x"];
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        expr = true;
        silent = true;
        desc = "Down";
      };
    }
    {
      key = "k";
      mode = ["n" "x"];
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        expr = true;
        silent = true;
        desc = "Up";
      };
    }
    {
      key = "<Down>";
      mode = ["n" "x"];
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        expr = true;
        silent = true;
        desc = "Down";
      };
    }
    {
      key = "<Up>";
      mode = ["n" "x"];
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        expr = true;
        silent = true;
        desc = "Up";
      };
    }
    {
      key = "<A-j>";
      mode = "n";
      action = "<cmd>m .+1<cr>==";
      options = {
        desc = "Move Down";
      };
    }
    {
      key = "<A-k>";
      mode = "n";
      action = "<cmd>m .-2<cr>==";
      options = {
        desc = "Move Up";
      };
    }
    {
      key = "<A-j>";
      mode = "i";
      action = "<esc><cmd>m .+1<cr>==gi";
      options = {
        desc = "Move Down";
      };
    }
    {
      key = "<A-k>";
      mode = "i";
      action = "<esc><cmd>m .-2<cr>==gi";
      options = {
        desc = "Move Up";
      };
    }
    {
      key = "<A-j>";
      mode = "v";
      action = ":m '>+1<cr>gv=gv";
      options = {
        desc = "Move Down";
      };
    }
    {
      key = "<A-k>";
      mode = "v";
      action = ":m '<-2<cr>gv=gv";
      options = {
        desc = "Move Up";
      };
    }
    {
      key = "<esc>";
      mode = ["i" "n"];
      action = "<cmd>noh<cr><esc>";
      options = {
        desc = "Escape and Clear hlsearch";
      };
    }
    {
      key = "<C-s>";
      mode = ["i" "x" "n" "s"];
      action = "<cmd>w<cr><esc>";
      options = {
        desc = "Save File";
      };
    }
    {
      key = "<";
      mode = "v";
      action = "<gv";
    }
    {
      key = ">";
      mode = "v";
      action = ">gv";
    }
    {
      key = "<";
      mode = "n";
      action = "<<";
      options = {
        desc = "Indent Left";
      };
    }
    {
      key = ">";
      mode = "n";
      action = ">>";
      options = {
        desc = "Indent Right";
      };
    }
    {
      key = "<C-h>";
      mode = "i";
      action = "<Left>";
      options = {
        desc = "Move Left";
      };
    }
    {
      key = "<C-j>";
      mode = "i";
      action = "<Down>";
      options = {
        desc = "Move Down";
      };
    }
    {
      key = "<C-k>";
      mode = "i";
      action = "<Up>";
      options = {
        desc = "Move Up";
      };
    }
    {
      key = "<C-l>";
      mode = "i";
      action = "<Right>";
      options = {
        desc = "Move Right";
      };
    }
    {
      key = "x";
      mode = "n";
      action = "V";
      options = {
        desc = "Select Line";
      };
    }
    {
      key = "x";
      mode = "v";
      action = "j";
      options = {
        desc = "Extend Selection Down";
      };
    }
    {
      key = "%";
      mode = ["n" "v"];
      action = "ggVG";
      options = {
        desc = "Select All";
      };
    }
    {
      key = "u";
      mode = "n";
      action = "u";
      options = {
        silent = true;
        desc = "Undo (Helix style)";
      };
    }
    {
      key = "U";
      mode = "n";
      action = "<C-r>";
      options = {
        silent = true;
        desc = "Redo (Helix style)";
      };
    }
  ];
}
