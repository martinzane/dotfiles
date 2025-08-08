# Dotfiles

## Software Overview

The complete list of software and packages can be found in [docs/software.md](docs/software.md).

| Component | Software |
| -------- | ------- |
| Operating system | [Debian](https://www.debian.org/) |
| Window manager | [Sway](https://swaywm.org/) |
| Status bar | [Waybar](https://github.com/Alexays/Waybar) |
| Terminal | [foot](https://codeberg.org/dnkl/foot) |
| Shell | [zsh](https://wiki.debian.org/Zsh) |
| Notifications | [dunst](https://github.com/dunst-project/dunst) |
| Screenshots | [grim](https://sr.ht/~emersion/grim/) and [slurp](https://github.com/emersion/slurp) |
| Launcher | [Tofi](https://github.com/philj56/tofi) |
| File manager | [lf](https://github.com/gokcehan/lf) |
| Image viewer | [imv](https://sr.ht/~exec64/imv/) |
| Audio player | [mpc](https://github.com/ncmpcpp/ncmpcpp) |
| Video player | [mpv](https://mpv.io/) |
| Browser | [Brave](https://brave.com/) |

## Prerequisites

- Bare-bone [Debian](https://www.debian.org/) installation with standard system utilities only

## Installation

You can copy over the `.config` and `.local` folders from this repository or configure everything yourself.

### 1. Install Utilities
- Run: `sudo apt install curl unzip git software-properties-common wev`

### 2. Install Brave
- Run: `curl -fsS https://dl.brave.com/install.sh | sh`

### 3. Install Fonts
- Run: `sudo apt install fonts-cantarell fonts-font-awesome fonts-fork-awesome fonts-noto-color-emoji`
- Download [Maple Mono Nerd Font](https://github.com/subframe7536/maple-font/releases) (TTF Ligature) and unzip fonts to `$HOME/.fonts`.

### 4. Install Sway
- Run: `sudo apt install sway xwayland`
- Configure in `$XDG_CONFIG_HOME/sway`.

### 5. Install Waybar
- Run: `sudo apt install waybar pulseaudio pavucontrol swaylock swayidle`
- Configure in `$XDG_CONFIG_HOME/waybar`.
- Configure in `$XDG_CONFIG_HOME/swaylock`.
- Configure in `$XDG_CONFIG_HOME/swayidle`.

### 6. Configure Foot (Pre-installed in Sway)
- Configure in `$XDG_CONFIG_HOME/foot`.

### 7. Install Zsh
- Run: `sudo apt install zsh`
- Set environment variables in `$HOME/.zshenv` and configure in `$XDG_CONFIG_HOME/zsh`.
- Set Zsh as default shell with `chsh -s $(which zsh)`.

### 8. Install Tofi
- Install [Tofi](https://github.com/philj56/tofi).
- Configure in `$XDG_CONFIG_HOME/tofi`.
- Add powermenu script to `$HOME/.local/bin`.

### 9. Install LF
- Install [Go](https://go.dev/doc/install) and [LF](https://github.com/gokcehan/lf/wiki/Tutorial).
- Run: `sudo apt install bat eza`
- Set up a `bat -> batcat` symlink with `ln -s /usr/bin/batcat $HOME/.local/bin/bat`.
- Add `mimeapps.list` to `$XDG_CONFIG_HOME`.

### 10. Install imv
- Run: `sudo apt install imv`
- Configure in `$XDG_CONFIG_HOME/imv`.

### 11. Install mpv
- Run: `sudo apt install mpv`
- Configure in `$XDG_CONFIG_HOME/mpv`.

### 12. Install mpd
- Run: `sudo apt install mpd mpc`
- Configure in `$XDG_CONFIG_HOME/mpd`.
- Disable system service: `sudo systemctl disable --now mpd`
- Enable and start user service:  
  `systemctl --user enable mpd`  
  `systemctl --user start mpd`

### 13. Install dunst
- Run `sudo apt install dunst libnotify-bin`
- Configure in `$XDG_CONFIG_HOME/dunst`

### 14. Install grim & slurp
- Run `sudo apt install grim slurp wl-clipboard`

### 13: Install VSCodium
- Install [VSCodium](https://github.com/VSCodium/vscodium/releases)
- Configure in `.config/VSCodium/User/settings.json`
- Add extension script in `.local/bin`
- Run `vscodium-extensions.sh` script