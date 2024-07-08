#!/bin/sh

set -x

sync_system_apps() {
	sudo pacman -Qen | sort >"$1/installed_apps.txt"
}

sync_python_apps() {
	fd . -d 1 /home/bryant/.local/bin | awk -F/ '{print $NF}' |
		sort >"$1/pipx_installed.txt"
}

sync_rust_apps() {
	fd . -d 1 -t f /home/bryant/.cargo/bin | awk -F/ '{print $NF}' |
		sort >"$1/cargo_installed.txt"
}

sync_go_apps() {
	fd . -d 1 -t f /home/bryant/go/bin | awk -F/ '{print $NF}' |
		sort >"$1/go_installed.txt"
}

sync_flatpak_apps() {
	flatpak list | sort >"$1/flatpak_installed.txt"
}

sync_aur_apps() {
	paru -Qm | sort >"$1/installed_aur_apps.txt"
}

main() {
	DOTFILES_PATH="/home/bryant/Documents/github/dotfiles/apps"

	sync_system_apps $DOTFILES_PATH
	sync_python_apps $DOTFILES_PATH
	sync_rust_apps $DOTFILES_PATH
	sync_go_apps $DOTFILES_PATH
	sync_flatpak_apps $DOTFILES_PATH
	sync_aur_apps $DOTFILES_PATH
}

main
