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
}
