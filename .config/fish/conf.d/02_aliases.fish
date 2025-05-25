# main
alias ls="ls"
alias cl="clear"
alias c="xclip -selection clipboard"
alias vi="env NVIM_APPNAME='vim' nvim"
alias p="xclip -selection clipboard -o"

# system
alias sht="shutdown now"
alias sp="systemctl suspend"
alias rebootcmd="systemctl reboot"
alias fontcache="sudo fc-cache -f -v"

# navigation
alias media="cd /run/media"

# youtube
alias yt="yt-dlp"
alias yta="yt-dlp --cookies \"$YT_DLP_COOKIES\" --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias ytv="yt-dlp --cookies \"$YT_DLP_COOKIES\" --format \"bestvideo[height<=1080]+bestaudio/best[height<=1080]\" --merge-output-format mp4"
alias ytap="yt-dlp --cookies \"$YT_DLP_COOKIES\" --yes-playlist --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias ytvp="yt-dlp --cookies \"$YT_DLP_COOKIES\" --yes-playlist --format \"bestvideo[height<=1080]+bestaudio/best[height<=1080]\" --merge-output-format mp4"
alias yts-audio="mpv --no-video --ytdl-raw-options=cookies=\"$YT_DLP_COOKIES\",format=bestaudio"
alias yts-video="mpv --ytdl-raw-options=cookies=\"$YT_DLP_COOKIES\",format=\"bestvideo[height<=1080]+bestaudio/best[height<=1080]\""
