# X start file (kyleg)

# Source system xinitrc files (Arch)
source /etc/X11/xinit/xinitrc.d/40-libcanberra-gtk-module.sh
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# Add current .Xresources to xrdb
xrdb -o ~/.Xresources

# Start the compositor
picom -b --dbus

# Start the URxvt daemon for lower startup time on terminal windows.
#urxvtd -q -o -f

# FehBG restore background script
~/.fehbg &

# Enable the screensaver daemon
#xscreensaver &
#xss-lock -n /usr/libexec/xsecurelock/dimmer -l & -- xsecurelock

# Attempts to fix the slow startup issue with xdg-desktop-portal
# See https://github.com/swaywm/sway/wiki#gtk-applications-take-20-seconds-to-start
#exec dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Start AwesomeWM
#
# The WM is started like this to fix an issue with notifications.
# See https://www.reddit.com/r/voidlinux/comments/cycyv9/notifications_not_working_using_dbus_and_elogind/
# On Arch, this might cause a problem with pressing function keys (they might makes X hang).
#exec dbus-launch --sh-syntax --exit-with-session awesome
#exec awesome
exec leftwm

