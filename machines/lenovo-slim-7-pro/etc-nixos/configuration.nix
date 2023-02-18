# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{

  imports =
    [ # Include the results of the hardware scan.
	<nixos-hardware/lenovo/thinkpad/t14s/amd/gen1>
	/etc/nixos/hardware-configuration.nix
  ./config/boot.nix
  ./config/networking.nix
  ./config/fonts.nix
  ./config/gnome.nix
  ./config/users.nix
  ./config/general.nix
  ./config/virtualisation.nix
  ./config/systemPackages.nix
  ./config/services.nix
    ];

}
