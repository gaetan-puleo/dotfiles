 {config, pkgs, lib, boot, ...}:
 {
 # Bootloader.

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.extraModprobeConfig = '' options bluetooth disable_ertm=1 '';
  boot.supportedFilesystems = [ "ntfs" ];
}
