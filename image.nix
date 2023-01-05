{ pkgs, modulesPath, lib, ... }: {
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
    system.stateVersion = "22.11";
}