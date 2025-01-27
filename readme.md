sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
rm -rf yay
yay -S hyprland-git
// Make sure you install mesa as the OpenGL driver. The virgl drivers are included in mesa.

// hyprland setup
yay -S nano swww dunst waybar poweralertd
yay -S kitty rofi thunar firefox-developer-edition looking-glass
yay -S hyprpicker hyprlock-git wlogout

// repository download
yay -S zip unzip

yay -S visual-studio-code-bin
// waybar
yay -S nerd-fonts pamixer nm-connection-editor

