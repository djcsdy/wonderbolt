{
    pkgs ? import (
        # nixos-22.11
        fetchTarball "https://github.com/NixOS/nixpkgs/archive/0bf3109eeb61780965c27f4a0a4affdcd0cd4d3d.tar.gz"
    ) {}
} :
    pkgs.mkShell {
        buildInputs = [
            pkgs.nixos-generators
        ];
    }
