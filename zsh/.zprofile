#
# ~/.bash_profile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

if uwsm check may-start >/dev/null; then
	exec uwsm start hyprland.desktop
fi
