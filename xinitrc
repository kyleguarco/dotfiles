# X start file (kyleg)

# Source system xinitrc files (Arch)
source /etc/X11/xinit/xinitrc.d/40-libcanberra-gtk-module.sh
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# Add current .Xresources to xrdb
xrdb -o ~/.Xresources

# Start the compositor
picom -b --dbus

# FehBG restore background script
~/.fehbg &

# Start polybar
polybar example 2>&1 & disown

# Start the window manager
exec leftwm

