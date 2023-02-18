{config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    neovim
    git
    wireguard-tools
    gnome.gnome-boxes
    qemu_kvm
    qemu
    libvirt

    gnomeExtensions.dash-to-dock
  ];
}
