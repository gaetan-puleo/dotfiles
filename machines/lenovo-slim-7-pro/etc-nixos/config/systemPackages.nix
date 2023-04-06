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
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.user-themes-x
    gnome.gnome-tweaks
    gnomeExtensions.tweaks-in-system-menu
    # gnomeExtensions.gsconnect
    openssl
  ];
}
