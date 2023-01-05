# wonderbolt

wonderbolt must be built inside NixOS. Unfortunately a nix-shell in some other OS isn't good enough.

The host NixOS must be able to execute aarch64 binaries. Set in `/etc/nixos/configuration.nix`:

```nix
boot.binfmt.emulatedSystems = [ "aarch64-linux" ];
```

Flakes must be enabled in the host NixOS. Set in `/etc/nixos/configuration.nix`:

```nix
nix.extraOptions = ''
  experimental-features = nix-command flakes
'';
```

To apply changes, run `sudo nixos-rebuild switch`.