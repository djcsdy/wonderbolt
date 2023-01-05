{ pkgs, modulesPath, lib, ... }: {
    imports = [ "${modulesPath}/profiles/minimal.nix" ];
    boot.growPartition = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
    boot.tmpOnTmpfs = true;
    i18n.defaultLocale = "en_GB.UTF-8";
    services.logrotate.enable = true;
    system.stateVersion = "22.11";
}