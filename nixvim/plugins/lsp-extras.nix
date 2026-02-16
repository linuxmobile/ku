{pkgs, ...}: {
  extraConfigLua = ''
    vim.lsp.config.qmlls = {
      cmd = {"${pkgs.qt6.qtdeclarative}/bin/qmlls", "-E"},
      filetypes = {"qml", "qmljs"},
      root_markers = {"*.qmlproject", "*.qml", "CMakeLists.txt", ".git"},
    }
  '';
}
