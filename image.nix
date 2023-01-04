# From nix-shell, build with
# nixos-generate --format hyperv --configuration image.nix -o result

{ pkgs, modulesPath, lib, ... }: {
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
}