{ pkgs, modulesPath, lib, ... }: {
    imports = [ "${modulesPath}/profiles/minimal.nix" ];
    boot.growPartition = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
    boot.tmpOnTmpfs = true;
    services.logrotate.enable = true;
    system.stateVersion = "22.11";
}