# Start Hyprland automatically on TTY1 login
if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi
