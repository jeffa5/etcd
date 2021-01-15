{
  description = "etcd";
  outputs = { self, nixpkgs }:
    with import nixpkgs { system = "x86_64-linux"; };
    {
      devShell.x86_64-linux = mkShell {
        buildInputs = [
          go

          nixpkgs-fmt
          rnix-lsp
        ];
      };
    };
}
