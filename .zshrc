# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#sysfetch 

export PATH="$PATH:/home/master/.local/bin/:/usr/local/go/bin:/opt/nvim-linux64/bin"

alias ls='ls -CF --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lh='ls -alh'
alias l='ls'
alias sl='ls'
alias dc='cd'
alias scd='cd'
# alias lablk='lsblk -o NAME,SIZE,FSUSE%,TYPE,FSTYPE,LABEL,PARTLABEL,MOUNTPOINTS,UUID'
alias sigkill='sudo kill -s SIGKILL'

export github='https://github.com'
export cpy='https://github.com/cpy-dev'
export net=192.168.32
export zero="master@10.42.0.2"
export raspi="root@192.168.1.33"
export m64="root@192.168.1.64"
export pentium="master@192.168.1.65"
export hd="/media/master/HD"
export gpudriver='/sys/class/drm/card0/device/'

alias sstatus='sudo systemctl status'
alias sstart='sudo systemctl start'
alias sstop='sudo systemctl stop'

if [ "$(cat /sys/module/hid_apple/parameters/fnmode)" -eq "3" ]; then
	sudo su -c "echo 2 > /sys/module/hid_apple/parameters/fnmode" > /dev/null
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

xmodmap -e "keycode 118 = Delete Delete Delete"

echo "\x1b[96mWelcome to your terminal console master\x1b[00m"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Created by newuser for 5.9
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/master/Applications/google-cloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/master/Applications/google-cloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/master/Applications/google-cloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/master/Applications/google-cloud/google-cloud-sdk/completion.zsh.inc'; fi
