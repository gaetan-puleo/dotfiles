# Epic Dotfiles

## Setup

### Quick setup (Beta)
```bash
wget -O - https://raw.githubusercontent.com/gaetan-puleo/dotfiles/new-config/install.bash | bash
```


### Normal setup (Beta)

First we need git and stow
```bash
# install stow and git on debian based distro
sudo apt update -y; sudo apt install -y stow git

# install stow and git on arch based distro
sudo pacman -Suy git stow
```
Clone the repository

```bash
git clone https://github.com/gaetan-puleo/dotfiles.git && cd dotfiles
```

Create symlinks
```bash
# All symlinks
bash ./symlimks all

# Minimal Symlinks
bash ./symlimks minimal
```
Install Nix, Home manager and the dependencies
```bash
bash ./scripts/nix.bash
```
## Uninstall dotfiles

```bash
bash ./symlimks delete
```
<!-- ### Advanced Setup -->

<!-- #### Install only wanted apps -->
<!-- You can install only the wanted packages -->
<!-- ```bash -->
<!-- makefile minimal # minimal Setup -->
<!-- makefile raspberry # Setup a raspberry server -->

<!-- # optionnal bundle --> 
<!-- makefile gui --> 
<!-- makefile server --> 
<!-- makefile design --> 
<!-- makefile office --> 
<!-- makefile dev --> 
<!-- ``` -->

#### Firefox Addons

- [LastPass (password manager)](https://addons.mozilla.org/fr/firefox/addon/lastpass-password-manager/)
- [React Dev Tools](https://addons.mozilla.org/fr/firefox/addon/react-devtools/)
- [Read Medium article for free](https://addons.mozilla.org/fr/firefox/addon/medium-unlimited-read-for-free/)
- [Ublock origin (ad block)](https://addons.mozilla.org/fr/firefox/addon/ublock-origin/)
- [Unhook youtube (minimal youtube ui)](https://addons.mozilla.org/fr/firefox/addon/youtube-recommended-videos/)

- [Metamask (ethereum dev kit and eth wallet)](https://addons.mozilla.org/fr/firefox/addon/ether-metamask/)
- [Https everywhere)](https://addons.mozilla.org/fr/firefox/addon/https-everywhere/)
- [I don't care about cookies (never accept cookies again)](https://addons.mozilla.org/fr/firefox/addon/i-dont-care-about-cookies/)

- [Tokyonight (This theme is love)](https://addons.mozilla.org/en-US/firefox/addon/tokyo_night/?)


#### Slack Theme

Tokyonight colors
```
#1A1B26,#121016,#34548A,#FEFEFE,#414868,#9AA5CE,#9ECE6A,#F7768E,#1A1B26,#9AA5CE
```

```

