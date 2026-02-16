{pkgs, ...}: {
  extraPlugins = [pkgs.vimPlugins.vim-visual-multi];

  globals = {
    VM_maps = {
      "Find Under" = "";
      "Find Subword Under" = "";
      "Add Cursor Down" = "C";
      "Add Cursor Up" = "<M-C>";
      "Switch Mode" = "v";
    };
  };
}
