{
  description = "Sample Nix ts-node build";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    gitignore = {
      url = "github:hercules-ci/gitignore.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, flake-utils, gitignore, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # EDIT THIS
        variables = import ./variables/default.nix.template;

        pkgs = import nixpkgs { inherit system; };
        nodejs = pkgs.nodejs;
        node2nixOutput = import ./default.nix { inherit pkgs nodejs system; };
        # NOTE: may want to try https://github.com/svanderburg/node2nix/issues/301 to limit rebuilds
        nodeDeps = node2nixOutput.nodeDependencies;
      in with pkgs; {
        defaultPackage = app;
        devShell = mkShell {
        buildInputs = [ nodejs node2nix ];
        NODE_PATH = "${nodeDeps}/lib/node_modules";
        SESSION="${variables.session}";
        TG_SECRET="${variables.botsecret}";
        TG_CHAT_ID="${variables.chatid}";
        shellHook = ''
            #node index.js
          '';
        };
      });
}
