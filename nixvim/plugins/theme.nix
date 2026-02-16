{pkgs, ...}: {
  colorschemes.solarized-osaka = {
    enable = true;
    settings = {
      transparent = true;
    };
  };
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "base16-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "RRethy";
        repo = "base16-nvim";
        rev = "master";
        hash = "sha256-CFY3xOLmEmlZfhidyHGwKO15NvUeoAfVdnr7C5nWywQ=";
      };
    })
  ];

  extraConfigLua = ''
    local matugen_path = vim.fn.expand("~/.config/nvim/lua/matugen.lua")
    if vim.fn.filereadable(matugen_path) == 1 then
      dofile(matugen_path)

      local signal = vim.uv.new_signal()
      signal:start(
        'sigusr1',
        vim.schedule_wrap(function()
          dofile(matugen_path)
        end)
      )
    else
      vim.cmd('colorscheme default')
    end
  '';
}
