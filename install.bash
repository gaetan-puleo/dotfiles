# install nix
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

echo "Install nixGL"
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update

nix-env -iA nixgl.auto.nixGLDefault   # or replace `nixGLDefault` with your desired wrapper

echo "install stow and git" 
nix-env -iA nixpkgs.stow
nix-env -iA nixpkgs.git

# clone repo
echo "Clone dotfiles"
git clone https://github.com/gaetan-puleo/dotfiles.git ~/dotfiles

echo "go to dotfiles"
cd ~/dotfiles

echo "change to new-config branch"
git checkout new-config

echo "remove bashrc"
rm ~/.bashrc

echo "symlink everything"
bash ./symlink.bash all

echo "uninstall git and stow"
nix-env --uninstall git
nix-env --uninstall stow

echo "Apply home-manager config"
home-manager switch

# echo "Set Fish a default shell"
# sudo chsh $USER -s $(which fish)

echo "Install fisher"
fish -c "cd; curl -sL https://git.io/fisher | source && fisher update"

echo "Install packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Source bashrc"
. ~/.bashrc
