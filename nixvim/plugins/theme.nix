{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "fleur-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "aikhe";
        repo = "fleur.nvim";
        rev = "master";
        hash = "sha256-M/QLqz2phegSouc5m3+r5XzJZz5kh4nM5thMHWX0A78=";
      };
    })
  ];

  extraConfigLua = ''
    require("fleur")
    vim.cmd([[colorscheme fleur]])
  '';
  #
  # plugins.transparent = {
  #   enable = true;
  #   settings = {
  #     extra_groups = [
  #       "Normal"
  #       "NormalNC"
  #       "Comment"
  #       "Constant"
  #       "Special"
  #       "Identifier"
  #       "Statement"
  #       "PreProc"
  #       "Type"
  #       "Underlined"
  #       "Todo"
  #       "String"
  #       "Function"
  #       "Conditional"
  #       "Repeat"
  #       "Operator"
  #       "Structure"
  #       "LineNr"
  #       "NonText"
  #       "SignColumn"
  #       "CursorLine"
  #       "CursorLineNr"
  #       "StatusLine"
  #       "StatusLineNC"
  #       "EndOfBuffer"
  #     ];
  #   };
  # };
}
