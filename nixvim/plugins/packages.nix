{pkgs, ...}: {
  extraPackages = with pkgs; [
    bun
    lsof
    oxfmt
    ps
  ];
}
