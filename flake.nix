{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    import-tree.url = "github:vic/import-tree";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    import-tree,
    ...
  } @ inputs: {
    packages.x86_64-linux.default = nixvim.legacyPackages.x86_64-linux.makeNixvimWithModule {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {inherit inputs;};
      module = {
        imports = [(import-tree ./nixvim)];
      };
    };

    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
      pkgs.mkShell {
        packages = [self.packages.x86_64-linux.default];
      };
  };
}
