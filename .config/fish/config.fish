if test -z "$DISPLAY"; and test (tty) = /dev/tty1; and status is-login
    startx
end

set -U fish_user_paths \
    ~/bin/global/ \
    ~/.cargo/bin/ \
    ~/.local/bin/ \
    ~/.local/share/bob/nvim-bin/ \
    ~/.local/share/nvim/mason/bin/ \
    /usr/local/bin/ \
    /var/lib/flatpak/exports/bin/ \
    $fish_user_paths

if command -v fzf >/dev/null
	fzf --fish | source
end

if command -v atuin >/dev/null
    atuin init fish --disable-up-arrow | source
		bind \cp _atuin_bind_up
end

if command -v starship >/dev/null
    starship init fish | source
end

if command -v fnm >/dev/null
    fnm env --shell fish --use-on-cd | source
end

if command -v zoxide >/dev/null
    zoxide init fish | source
end

set -U fish_greeting
set -U fish_autosuggestion_enabled 0

# fish_config to config fish terminal
