{
  description = "A Nix-flake-based C/C++ development environment";

  inputs.nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*.tar.gz";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      forEachSupportedSystem = f:
        nixpkgs.lib.genAttrs supportedSystems (
          system:
            f {
              inherit system;
              pkgs = import nixpkgs { inherit system; };
            }
        );
    in {
      devShells = forEachSupportedSystem ({ pkgs, system }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            python313
            python313Packages.torch
            python313Packages.pandas
            python313Packages.numpy
            python313Packages.matplotlib
            python313Packages.kagglehub
          ] ++ (if system == "aarch64-darwin" then [ ] else [ gdb ]);

          shellHook = ''
            fish
          '';
        };
      });
    };
}
