# main
abbr -a yay "paru"
abbr -a pass 'gopass'
abbr -a bb "btm --basic"
abbr -a transes "trans en:es"
abbr -a anime "ani-cli -q 1080"
abbr -a wg "sudo wg" # for custom vpn
abbr -a ani-cli-dub "ani-cli -q 1080 --dub"

abbr -a ff "fastfetch"
abbr -a dh "rm ~/.local/share/fish/fish_history"
abbr -a rex "xrdb -merge ~/.Xresources; and pkill -USR1 -x st"
abbr -a motivation "mpv ~/Documents/github/media/videos/biy/cristiano.mp4"

# git
abbr -a gd "git diff"
abbr -a lzg "lazygit"
abbr -a gc "git commit"
abbr -a gb "git branch"
abbr -a gaa "git add -A"
abbr -a gco "git checkout"
abbr -a gdc "git diff --cached"
abbr -a gcc 'git rev-list --count HEAD'
abbr -a gsb "git status --short --branch"
abbr -a ggpull 'git pull origin (git rev-parse --abbrev-ref HEAD)'
abbr -a ggpush 'git push origin (git rev-parse --abbrev-ref HEAD)'
abbr -a glg "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"

# docker
abbr -a lzd "lazydocker"

# tmux
abbr -a ta "tmux attach"
abbr -a tk "tmux kill-server"
abbr -a tn 'tmux new -s $USER'
