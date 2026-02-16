{
  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
    combinePlugins = {
      enable = true;
      standalonePlugins = [
        "nvim-treesitter"
        "fff.nvim"
        "snacks.nvim"
      ];
    };
  };

  viAlias = true;
  vimAlias = true;

  globals.mapleader = " ";
  globals.loaded_matchit = 1;

  opts = {
    clipboard = "unnamedplus";
    mouse = "a";
    splitbelow = true;
    splitright = true;
    timeoutlen = 500;
    termguicolors = true;
    completeopt = "menuone,noselect";
    updatetime = 300;
    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    expandtab = true;
    shiftround = true;
    autoindent = true;
    smartindent = true;
    number = true;
    relativenumber = true;
    wrap = false;
    cursorline = true;
    signcolumn = "yes";
    scrolloff = 8;
    sidescrolloff = 5;
    ignorecase = true;
    smartcase = true;
    incsearch = true;
    hlsearch = true;
    swapfile = false;
    backup = false;
    writebackup = false;
    undofile = true;
    list = true;
    listchars = "tab:→\\ ,trail:°,extends:›,precedes:‹";
    foldmethod = "indent";
    foldlevel = 99;
    foldenable = false;
  };

  plugins.lz-n.enable = true;
}
