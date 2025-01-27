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
yay -S hyprpicker-git hyprlock-git wlogout
yay -S mate-polkit ffmpeg neovim viewnior pavucontrol starship wl-clipboard wf-recorder grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice thunar-archive-plugin aylurs-gtk-shell sddm nwg-look nordic-theme papirus-icon-theme noto-fonts noto-fonts-emoji brightnessctl

// repository download
yay -S zip unzip

yay -S visual-studio-code-bin
// waybar
yay -S nerd-fonts pamixer nm-connection-editor

yay -S nwg-look gtk nordic-theme papirus-icon-theme
// go to gtk settings and set nordic widget theme and papirus icons

yay -S github-cli
gh auth login
gh repo clone guillaumeboehm/Nordzy-cursors
cd Nordzy-cursors
./install.sh
// I use cappucino frappe dark

yay -S bluez blueman

