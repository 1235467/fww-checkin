{
  description = "my project description";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          devShell = { pkgs }: pkgs.mkShell {
            buildInputs = with pkgs;
              with nodePackages; [
                nodejs
                node2nix
                (callPackage ./default.nix { }).shell.nodeDependencies
              ];
            shellHook = ''
              export NODE_PATH=${pkgs.callPackage ./default.nix {}.shell.nodeDependencies}/lib/node_modules
            '';
          };

        }
      );
}
