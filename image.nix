{ pkgs, modulesPath, lib, ... }: {
    imports = [ "${modulesPath}/profiles/minimal.nix" ];
    boot.cleanTmpDir = true;
    boot.growPartition = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
    services.logrotate.enable = true;
    system.stateVersion = "22.11";
}