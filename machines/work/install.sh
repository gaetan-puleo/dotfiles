# @TODO
#
# @description this script is not complete
echo "Install nix"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

nix-env --version

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz
nix-channel --update

export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

echo "Install home-manager"
nix-env -iA nixpkgs.home-manager


echo "Install packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Install fisher"
fish -c "cd; curl -sL https://git.io/fisher | source && fisher update"

