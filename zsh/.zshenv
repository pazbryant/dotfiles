# {{ enviroment variables

export EDITOR="nvim"
export VISUAL=$EDITOR
export TERMINAL="st"
export SUDO_EDITOR=$EDITOR
export BROWSER="thorium-browser"
export VIDEO="mpv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export BAT_PAGER=$PAGER
export WM="dwm"
export GPG_TTY=$(tty)
export MANPAGER='nvim +Man!'
export GOPATH="/home/bryant/go/bin"
export CM_LAUNCHER="rofi"
export SXHKD_SHELL="zsh"
export STARSHIP_CONFIG="/home/bryant/.config/starship/starship.toml"
export XDG_CONFIG_HOME="$HOME/.config"

# }}

#{{ fzf

export FZF_DEFAULT_OPTS=" \
--preview-window noborder \
--height=50% \
--bind 'ctrl-o:execute(xdg-open {})'
--bind 'ctrl-x:execute(xdg-default {})'
"

export FZF_DEFAULT_COMMAND="fd \
  --type f \
  --strip-cwd-prefix \
  --hidden \
  --follow \
  --exclude=.git"
