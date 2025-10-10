# Manual intallation guide

## Prerequisites

- Bare-bone [Debian](https://www.debian.org/) installation with standard system utilities only

## Installation

You can copy over the `.config` and `.local` folders from this repository or configure everything yourself.

### 1. Install Utilities
- Run: `sudo apt install curl unzip git wev`

### 2. Clone dotfiles 
- Run: `git clone https://github.com/martinzane/dotfiles.git`

### 3. Install Sway
- Run: `sudo apt install sway xwayland`
- Configure in `$XDG_CONFIG_HOME/sway`.

### 4. Install Brave
- Run: `curl -fsS https://dl.brave.com/install.sh | sh`

### 5. Install Fonts
- Run: `sudo apt install fonts-cantarell fonts-font-awesome fonts-fork-awesome fonts-noto-color-emoji`
- Install Maple Mono Nerd Font from dotfiles to `$XDG_DATA_HOME/fonts`.

### 6. Install Waybar
- Run: `sudo apt install waybar pulseaudio pavucontrol swaylock swayidle`
- Configure in `$XDG_CONFIG_HOME/waybar`.
- Configure in `$XDG_CONFIG_HOME/swaylock`.
- Configure in `$XDG_CONFIG_HOME/swayidle`.

### 7. Configure Foot (Pre-installed in Sway)
- Configure in `$XDG_CONFIG_HOME/foot`.

### 8. Install Zsh
- Run: `sudo apt install zsh`
- Set environment variables in `$HOME/.zshenv` and configure in `$XDG_CONFIG_HOME/zsh`.
- Set Zsh as default shell with `chsh -s $(which zsh)`.
- Add plugins to `$XDG_CONFIG_HOME/zsh/plugins` and include them in `.zshrc`

### 9. Install Tofi
- Run: `sudo apt install tofi`
- Configure in `$XDG_CONFIG_HOME/tofi`.
- Add powermenu script to `$HOME/.local/bin`.

### 10. Install LF
- Install [Go](https://go.dev/doc/install) and [LF](https://github.com/gokcehan/lf/wiki/Tutorial).
- Run: `sudo apt install bat eza`
- Set up a `bat -> batcat` symlink with `ln -s /usr/bin/batcat $HOME/.local/bin/bat`.
- Add `mimeapps.list` to `$XDG_CONFIG_HOME`.

### 11. Install imv
- Run: `sudo apt install imv`
- Configure in `$XDG_CONFIG_HOME/imv`.

### 12. Install mpv
- Run: `sudo apt install mpv`
- Configure in `$XDG_CONFIG_HOME/mpv`.

### 13. Install mpd & ncmpcpp
- Run: `sudo apt install mpd ncmpcpp`
- Configure mpd in `$XDG_CONFIG_HOME/mpd`.
- Configure ncmpcpp in `#XDG_CONFIG_HOME/ncmpcpp`
- Disable system service: `sudo systemctl disable --now mpd`
- Enable and start user service:  
  `systemctl --user enable mpd`  
  `systemctl --user start mpd`

### 14. Install dunst
- Run `sudo apt install dunst libnotify-bin`
- Configure in `$XDG_CONFIG_HOME/dunst`

### 15. Install grim & slurp
- Run `sudo apt install grim slurp wl-clipboard`

### 16. Install newsboat
- Run `sudo apt install newsboat`
- Configure in `$XDG_CONFIG_HOME/newsboat`
- Create the `$XDG_DATA_HOME/newsboat` directory.
- Add RSS feed links to `$XDG_CONFIG_HOME/newsboat/urls`

### 17. Install VSCodium
- Install [VSCodium](https://github.com/VSCodium/vscodium/releases)
- Configure in `.config/VSCodium/User/settings.json`
- Add extension script in `.local/bin`
- Run `vscodium-extensions.sh` script

### 17. Install sc-im 
- Install [sc-im](https://github.com/andmarti1424/sc-im/wiki/Installing-on-Debian)
- Configure in `.config/sc-im/scimrc`