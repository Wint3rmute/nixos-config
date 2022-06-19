{ config, pkgs, ... }: {
  networking.wireguard.enable = builtins.trace
    "\n  =====================================================\n   private.nix not found. Make sure to fill it later!\n  ====================================================="
    false;
}

