# X start file (kyleg)

# Source system xinitrc files (Arch)
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# Add current .Xresources to xrdb
xrdb -o ~/.Xresources

# Start the compositor
# The backend is xrender for fixing an issue with
# rofi window switching
picom -b --dbus --backend xrender

# FehBG restore background script
~/.fehbg &

# Start polybar
polybar example 2>&1 &

# Start the window manager
exec ~/.cargo/bin/leftwm
#exec ~/Git/leftwm/target/release/leftwm
