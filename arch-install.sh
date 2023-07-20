# warning

echo "YOU SHOULD RUN THIS SCRIPT WITH ROOT PRIVILEDGE BUT
SHOULDN'T RUN THIS SCRIPT AS ROOT USER


"

sleep 3

echo "BY RUNNING THIS SCRIPT YOU AGREE TO GNU GPLv3 A LICENSE
WHICH THIS DOTFILES \"PROJECT\" IS USING, ABORT THIS SCRIPT
IF IT'S THE OTHERWISE

LEARN MORE AT https://www.gnu.org/licenses/gpl-3.0.en.html


"

echo "Installation Would Began in..." 
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep "Go!"

# do some update
pacman --noconfirm -Syu

# list of packages
packages=(git bspwm dunst picom polybar rofi sxhkd network-manager-applet blueman
	ttf-nerd-fonts-symbols ttf-jetbrains-mono rxvt-unicode thunar lxappearance
	sxiv feh polkit-gnome rofi)

# check if the package, exsits... if not install
for package in ${packages[@]}; do
	if pacman -Qs ${package} > /dev/null; then
		echo "${package} has been installed, skipping..."
	else
		pacman --noconfirm -S ${package}
	fi
done

# Install Icons
git clone https://github.com/mdomlop/retrosmart-icon-theme temp-rit

cd temp-rit

./configure

make pacman

pacman -U retrosmart-icon-theme*pkg*

# after installing copy everything to .config folder
cp -Rvp . ~/
