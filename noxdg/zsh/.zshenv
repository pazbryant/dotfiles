# {{ enviroment variables
export EDITOR="nvim"
export VISUAL=$EDITOR
export TERMINAL="st"
export TERM="st"
export SUDO_EDITOR=$EDITOR
export BROWSER="firefox"
export VIDEO="mpv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export BAT_PAGER=$PAGER
export WM="bspwm"
export MANPAGER='nvim +Man!'
export GOPATH="/home/bryant/go/bin"
export CM_LAUNCHER="rofi"
export SXHKD_SHELL="zsh"
export GPG_TTY=$(tty)
export STARSHIP_CONFIG="/home/bryant/.config/starship/starship.toml"
export PASSWORD_STORE_DIR="/home/bryant/Documents/github/pass"

# }}

#{{ fzf

export FZF_DEFAULT_OPTS=" \
--preview-window noborder \
--height=50%"


export FZF_DEFAULT_COMMAND="fd \
  --type f \
  --strip-cwd-prefix \
  --hidden \
  --follow \
  --exclude=git"
#}}