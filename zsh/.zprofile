#
# ~/.bash_profile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

if hash uwsm 2>/dev/null; then
	if uwsm check may-start >/dev/null; then
		exec uwsm start hyprland.desktop
	fi
fi
