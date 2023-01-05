{ pkgs, modulesPath, lib, ... }: {
    imports = [ "${modulesPath}/profiles/minimal.nix" ];
    boot.growPartition = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.supportedFilesystems = lib.mkForce [ "vfat" "f2fs" "ntfs" ];
    boot.tmpOnTmpfs = true;
    console.keyMap = "uk";
    i18n.defaultLocale = "en_GB.UTF-8";
    networking.enableIntel2200BGFirmware = true;
    networking.firewall.enable = false;
    nix.daemonCPUSchedPolicy = "idle";
    nix.daemonIOSchedClass = "idle";
    nix.gc.automatic = true;
    nix.optimise.automatic = true;
    nix.settings = {
        allow-dirty = false;
        auto-optimise-store = true;
        keep-build-log = false;
        keep-derivations = false;
        preallocate-contents = true;
    };
    nixpkgs.config = {
        allowUnfree = true;
    };
    services.logrotate.enable = true;
    system.nixos.label = "wonderbolt";
    system.stateVersion = "22.11";
    systemd.enableEmergencyMode = false;
    time.timeZone = "Europe/London";
    users.mutableUsers = false;
    users.users = {
        dev = {
            description = "Developer account";
            extraGroups = [ "wheel" ];
            isNormalUser = true;
            password = "dev";
        };
    };
    xdg.menus.enable = false;
}