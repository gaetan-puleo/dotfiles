# install nix
echo "Install nix"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

nix-env --version

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz
nix-channel --update

export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

nix-env -iA nixpkgs.home-manager

nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update

nix-env -iA nixgl.auto.nixGLDefault   # or replace `nixGLDefault` with your desired wrapper

# install stow 
nix-env -iA nixpkgs.stow
nix-env -iA nixpkgs.git

# clone repo
git clone git@github.com:gaetan-puleo/dotfiles.git ~/dotfiles

# go to dotfiles
cd ~/dotfiles
git checkout new-config

# remove bashrc
rm ~/.bashrc
# symlink everything
bash ./symlink.bash all

#uninstall git and stow
nix-env --uninstall git
nix-env --uninstall stow

home-manager switch

