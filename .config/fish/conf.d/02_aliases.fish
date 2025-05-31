# main
alias ls="ls"
alias cl="clear"
alias zshc="vi ~/zsh/.zshconfig"
alias c="xclip -selection clipboard"
alias vi="env NVIM_APPNAME='vim' nvim"
alias p="xclip -selection clipboard -o"
alias fishc="vi ~/.config/fish/config.fish"

# system
alias sht="shutdown now"
alias sp="systemctl suspend"
alias rebootcmd="systemctl reboot"
alias fontcache="sudo fc-cache -f -v"

# navigation
alias media="cd /run/media"

# youtube
alias yt='yt-dlp'
alias yts='yt-dlp -o - --quiet | mpv --title="%(title)s" -'
alias yta='yt-dlp -f bestaudio/best -x --embed-thumbnail --add-metadata --embed-subs'
alias ytv='yt-dlp -f "bestvideo[height<=2160]+bestaudio/best" --merge-output-format mp4'
alias ytap='yt-dlp -f bestaudio/best -x --embed-thumbnail --add-metadata --embed-subs -o "%(playlist)s/%(title)s.%(ext)s"'
alias ytvp='yt-dlp -f "bestvideo[height<=2160]+bestaudio/best" --merge-output-format mp4 -o "%(playlist)s/%(title)s.%(ext)s"'
