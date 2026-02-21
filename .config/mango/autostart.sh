waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &
swaybg -i ~/walls/wall1.jpg >/dev/null 2>&1 &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
# The path may be /usr/lib/ or /usr/libexec/ depending on distribution
/usr/lib/xdg-desktop-portal-wlr
