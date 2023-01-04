On host system:

Install nix

Create `/etc/nix/nix.conf` with:

```
system-features = nixos-test benchmark big-parallel kvm
```

Run a `nix-shell` (configured in `shell.nix`):

```bash
nix-shell
```

In the `nix-shell`, run:

```bash
nixos-generate --format hyperv --configuration image.nix -o result
```

Build output is symlinked to `result`.

Copy the build output back to Windows (replacing `username`):

```bash
 cp --sparse=never result/nixos-23.05pre439163.a4379d2b0de-x86_64-linux.vhdx /mnt/c/Users/username/
```

And run the image in Hyper-V