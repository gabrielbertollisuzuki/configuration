#yaourt repo
echo "[archlinuxfr]" >> ~/pacman.conf
echo "SigLevel = Never" >> ~/pacman.conf
echo "Server = http://repo.archlinux.fr/$arch" >> ~/pacman.conf

#ck repo
echo "[repo-ck]" >> ~/pacman.conf
echo "Server = http://repo-ck.com/$arch" >> ~/pacman.conf
echo "pacman-key -r 5EE46C4C && pacman-key --lsign-key 5EE46C4C" >> ~/pacman.conf

#multlib repo
echo "[multilib]" >> ~/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> ~/pacman.conf


#installing packages
pacman -Syy
pacman -S python xf86-video-intel xf86-input-synaptics  mesa-libgl lib32-mesa-libgl libva-intel-driver xorg-{server{,-utils},apps,xinit} i3 dmenu alsa-{utils,plugins} dialogs lightdm firefox zsh yaourt ck-ivybridge lxtask lxterminal tar zip unzip unrar grml-zsh-config caja geany

#yaourt packages
yaourt i3blocks j4-dmenu-desktop popcorntime-ce-bin systemd-readahead gtk-theme-arc moka-icon-theme-git faba-mono-icons-git faba-icon-theme-git
