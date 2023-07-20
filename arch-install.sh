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

sleep 3

# list of packages
packages=(bspwm dunst picom polybar rofi sxhkd network-manager-applet blueman
	ttf-nerd-fonts-symbols ttf-jetbrains-mono rxvt-unicode thunar lxappearance
	sxiv feh)

# check if the package, exsits... if not install
for package in ${packages[@]}; do
	if pacman -Qs ${package} > /dev/null; then
		echo "${package} has been installed, skipping..."
	else
		pacman -S ${package}
	fi
done

# after installing copy everything to .config folder
cp -Rvp . ~/

2
