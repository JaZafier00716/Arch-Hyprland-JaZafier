# Hyprland Setup Guide

This guide provides step-by-step instructions to set up Hyprland on Arch Linux using a QEMU basic image.

---

## 📥 Download the Arch QEMU Basic Image

You can download the latest Arch QEMU basic image from:

- [**Arch Boxes GitLab**](https://gitlab.archlinux.org/archlinux/arch-boxes/-/packages)
- [**Arch Mirrors**](https://archlinux.org/mirrors/)

Or you can use Linutil by Chris Titus
```bash
curl -fsSL https://christitus.com/linux | sh
```
# You can Use my install script for hyprland setup
`bash ./script.sh`
# Or you can Install it manualy

## 🛠️ System Update and Base Packages

Update your system and install essential base packages:

```bash
sudo pacman -Syu
sudo pacman -S --needed base-devel git
```

---

## 🚀 Install `yay` (AUR Helper)

Install the `yay` AUR helper by running the following commands:

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
```

---

## 🌟 Install Hyprland and Dependencies

### Install Hyprland

```bash
yay -S hyprland
```

> **Note:** Ensure that `mesa` is installed as the OpenGL driver. The `virgl` drivers are included in `mesa`.

---

### Install Supporting Tools and Dependencies

```bash
yay -S --needed nano swww dunst waybar poweralertd kitty rofi thunar firefox-developer-edition looking-glass hyprpicker-git hyprlock-git wlogout mate-polkit ffmpeg neovim viewnior pavucontrol starship wl-clipboard wf-recorder grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice thunar-archive-plugin aylurs-gtk-shell sddm nwg-look nordic-theme papirus-icon-theme noto-fonts noto-fonts-emoji brightnessctl
```

---

### 📦 Repository Tools

```bash
yay -S zip unzip
yay -S visual-studio-code-bin
```

#### 🔄 Sync VS Code Profile

For my VS Code profile, click this link:\
[**VS Code Profile**](https://vscode.dev/profile/github/e8948df9105b1ea071d79279b7faafb5)

---

### 🎨 Customize Waybar and Themes

Install Waybar and related utilities:

```bash
yay -S nerd-fonts pamixer nm-connection-editor
yay -S nwg-look gtk nordic-theme papirus-icon-theme
```

#### Set GTK Themes

1. Open **GTK Settings**.
2. Set:
   - **Widget Theme:** `Nordic`
   - **Icon Theme:** `Papirus`

---

## 🖱️ Install GitHub CLI and Cursor Theme

### Install GitHub CLI

```bash
yay -S github-cli
gh auth login
```

### Install Nordzy Cursor Theme

```bash
gh repo clone guillaumeboehm/Nordzy-cursors
cd Nordzy-cursors
./install.sh
```

> I recommend using **Cappuccino Frappe Dark** for the cursor theme.

---
## Download config files
- Copy `backgrounds` folder into `~/Pictures/` folder. (If it does not exist, create one with `mkdir Pictures` in your home directory)
- Copy all folders (except `backgrounds`) into `~/.config/`, they contain all config files for some of the installed apps and for hyprland it self.
  
---

## 📌 Additional Notes
- This Project is inspired by [hyprland-titus](https://github.com/ChrisTitusTech/hyprland-titus/tree/main)
- Ensure all dependencies are installed properly.
- Use **mesa** as the OpenGL driver.
- Customize your setup with themes, cursors, and additional utilities as needed.

---

## 🔗 References
- [hyprland-titus](https://github.com/ChrisTitusTech/hyprland-titus/tree/main)
- [Arch Boxes GitLab](https://gitlab.archlinux.org/archlinux/arch-boxes/-/packages)
- [Arch Mirrors](https://archlinux.org/mirrors/)

---

### 🎉 Enjoy your Hyprland experience!

