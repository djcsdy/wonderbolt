{
    inputs = {
        nixpkgs.url = "nixpkgs/nixos-22.11";
        nixos-generators = {
            url = "github:nix-community/nixos-generators";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
    outputs = { self, nixpkgs, nixos-generators, ... }: with nixos-generators; {
        packages.x86_64-linux = {
            hyperv = nixosGenerate {
                system = "x86_64-linux";
                modules = [./image.nix];
                format = "hyperv";
            };
        };
    };
}