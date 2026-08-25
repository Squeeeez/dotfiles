# set -x
# zmodload zsh/zprof
#
# Example .zshrc file for zsh 4.0
#
# .zshrc is sourced in interactive shells.  It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#

# Search path for the cd command
cdpath=(. .. ~ ~/src)

# Use hard limits, except for a smaller stack and no core dumps
unlimit
limit stack 8192
limit core 0
limit -s

umask 022

exists () {
  type "$1" >/dev/null 2>/dev/null
}

# Set up aliases
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias j=jobs
alias d='dirs -v'
alias h=history
# alias grep=egrep
alias ls='lsd --color=always --group-directories-first'
alias grep="grep --color=always"
alias rg="rg --color=always"
alias xxd="xxd -R always"
alias ll='lsd -lh --date "+%Y-%m-%d %H:%M:%S" --group-directories-first'
alias l='lsd -lah --date "+%Y-%m-%d %H:%M:%S" --group-directories-first'
alias la='lsd -ah --group-directories-first'
alias el='eza -l --icons -g --time-style=long-iso --sort=Name --group-directories-first --color-scale=age --color-scale-mode=gradient'
alias bc='bc -l'
exists batcat && alias cat='batcat -Pp'
exists bat && alias cat='bat -Pp'
exists fdfind && alias fd=fdfind
alias vim=nvim
alias vimdiff="nvim -d"
alias mutt=neomutt
alias mpta="mosh -a pta.wasweissi.ch"
alias spta="ssh pta.wasweissi.ch"
alias sn="ssh nas"
# alias pfshow="pfctl -a '*' -vsr | sed -E -e '/\[ Inserted/d' -e 'N;s/(.*)\n.*Packets: ([^ ]+).*/\2\t\1/'"
alias pfshow='pfctl -a ''*'' -vsr | awk ''! /\[/ {rule=$0}; /\[/ && !/Inserted/ {packets=$5;print packets"\t"rule}'''
alias pkg-size='pkg info -as | sort -k 2 -h | tail -20 | column -t'

alias -s c='vim'
alias -s wmv='mplayer'
alias -s mpg='mplayer'
alias -s mpeg='mplayer'
alias -s mp3='mplayer'
alias -s tar.bz2='tar xjvf'
alias -s tbz2='tar xjvf'
alias -s tar.gz='tar xzvf'
alias -s tgz='tar xzvf'
alias -s pdf='xpdf'
alias -s ps='gv'
alias -s dvi='xdvi'
alias -s tex='vim'

# List only directories and symbolic
# links that point to directories
#alias lsd='ls -ld *(-/DN)'

# List only file beginning with "."
alias lsa='ls -ld .*'

# Shell functions
setenv() { typeset -x "${1}${1:+=}${(@)argv[2,$#]}" }  # csh compatibility
freload() { while (( $# )); do; unfunction $1; autoload -U $1; shift; done }

# Where to look for autoloaded function definitions
fpath=($fpath ~/.zfunc)

# Autoload all shell functions from all directories in $fpath (following
# symlinks) that have the executable bit on (the executable bit is not
# necessary, but gives you an easy way to stop the autoloading of a
# particular shell function). $fpath should not be empty for this to work.
for func in $^fpath/*(N-.x:t); autoload $func

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath # manpath

export LANG=en_US.UTF-8
export LC_PAPER=de_CH.UTF-8

# set windowmanager default to Window Maker
export WINDOWMANAGER=/usr/local/bin/wmaker

# set windowmanager list
export WINDOWMANAGERLIST="wmaker enlightenment kde gnome moonlight fluxbox xine gltron"

# set the default editor
export EDITOR=nvim
export VISUAL=$EDITOR

export COLORTERM=truecolor

# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g M='|more'
alias -g L='|less'
alias -g H='|head'
alias -g T='|tail'
alias -g G='|grep'
alias -g S='|sort'
alias -g W='|wc -l'

export XDG_RUNTIME_DIR=/var/run/xdg/thierry

export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export PATH=$PATH:$HOME/go/bin:$HOME/.local/share/gem/ruby/3.2/bin
export PATH=$PATH:$HOME/.npm-packages/bin
export PATH=/home/thierry/.local/share/bob/nvim-bin:$PATH
export PATH=/home/thierry/.local/share/JetBrains/Toolbox/scripts:$PATH
export PATH=$HOME/.elixir-install/installs/otp/27.1.2/bin:$PATH
export PATH=$HOME/.elixir-install/installs/elixir/1.18.0-otp-27/bin:$PATH

# export JAVA_HOME=/usr/local/openjdk21
if test -d "$HOME/.cargo"; then
  source "$HOME/.cargo/env"
fi

#avahi-browse _ssh._tcp -t -l -k -p > /dev/null 2>&1 &|

# export ZSH_TMUX_AUTOSTART=true
if [[ `tty` =~ "ttyv" ]]; then
  export ZSH_TMUX_AUTOSTART=false
fi
# export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_UNICODE=true

export ZSH_AUTOSUGGEST_ASYNC=true
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=50
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export PASSWORD_STORE_X_SELECTION=primary
export PASSWORD_STORE_CLIP_TIME=120
export CCACHE_CONFIGPATH=/home/thierry/.config/ccache/ccache.conf
export ERL_AFLAGS="+pc unicode -kernel shell_history enabled"

# manpath=($X11HOME/man /usr/man /usr/lang/man /usr/local/man)
# manpath=(/usr/share/man /usr/local/man /usr/X11R6/man /opt/gnome/man /usr/openwin/man /usr/man /usr/lang/man /usr/share/man/allman)
# export MANPATH

# Hosts to use for completion (see later zstyle)
hosts=(`hostname`
eisner.decus.org
ned.ipac.caltech.edu
riddler.home4u.ch
pta.wasweissi.ch
ptc.wasweissi.ch
ptc.alloq.ch
pte.glloq.ch
95.216.208.11
kiva2.lugs.ch
192.168.222.1 # pta
# 192.168.222.2 # android
192.168.222.3 # pizza
192.168.222.4 # laptop
192.168.222.5 # nas
# 192.168.222.6 # rasila
192.168.222.7 # ptc
192.168.222.8 # raspberrypi
192.168.222.9 # pibsd
192.168.222.10 # skippy
fd42:42:42::1 # pta
# fd42:42:42::2 # android
fd42:42:42::3 # pizza
fd42:42:42::4 # laptop
fd42:42:42::5 # nas
# fd42:42:42::6 # rasila
fd42:42:42::7 # ptc
fd42:42:42::8 # raspberrypi
fd42:42:42::9 # pibsd
fd42:42:42::10 # skippy
192.168.1.1
192.168.1.10
192.168.1.24
192.168.1.74
192.168.1.222
192.168.1.224
192.168.1.156
2a01:4f8:c17:775a::1
2a01:4f8:c013:208a::1
# $(avahi-browse _ssh._tcp -t -l -k -p | awk -F';' '{print $4"."$6}' | sort -u)
nas
pibsd
pizza
rpi
skippy
)

# zmv 'Page(*)/shot.jpg' 'shot-${1}.jpg'
autoload zmv
alias zcp='zmv -C'
alias zln='zmv -L'

autoload -Uz add-zsh-hook # vcs_info
setopt prompt_subst
#add-zsh-hook precmd vcs_info

# root: export PROMPT='%B%m::%n:[%5(~.%1d.%~)]%F{red}%#%F{reset_color}%b '
export PROMPT='%B%m::%n:[%5(~.%1d.%~)]%b '
export PS1=$PROMPT
# export RPROMPT='[%T %D%F{red}${vcs_info_msg_0_}%f %B%?%b %B%!%b]'
# export RPROMPT='[%T %D %B%?%b %B%!%b]'
export RPROMPT='[%T %D $(gitprompt) %B%?%b %B%!%b]'

zstyle ':omz:*' aliases no
zstyle ':omz:plugins:git' aliases yes

#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:*' unstagedstr ' *'
#zstyle ':vcs_info:*' stagedstr ' +'
#zstyle ':vcs_info:git:*' formats       ' (%b%u%c)'
#zstyle ':vcs_info:git:*' actionformats ' (%b|%a%u%c)'

zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'

# old prompts
#PROMPT='%B%m::%n:[%5(~.%1d.%~)]%b '
#RPROMPT='[%T %D %B%l%b %B%?%b %B%!%b]'

ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

_fix-omz-plugin() {
    [[ -f ./._zinit/teleid ]] || return 1
    local teleid="$(<./._zinit/teleid)"
    local pluginid
    for pluginid (${teleid#OMZ::plugins/} ${teleid#OMZP::}) {
        [[ $pluginid != $teleid ]] && break
    }
    (($?)) && return 1
    print "Fixing $teleid..."
    git clone --quiet --no-checkout --depth=1 --filter=tree:0 https://github.com/ohmyzsh/ohmyzsh
    cd ./ohmyzsh
    git sparse-checkout set --no-cone /plugins/$pluginid
    git checkout --quiet
    cd ..
    local file
    for file (./ohmyzsh/plugins/$pluginid/*~(.gitignore|*.plugin.zsh)(D)) {
        print "Copying ${file:t}..."
        cp -R $file ./${file:t}
    }
    rm -rf ./ohmyzsh
}

zinit ice atpull"%atclone" atclone"_fix-omz-plugin"
# zinit snippet OMZP::tmux
  # OMZP::tmuxinator \
zinit light woefe/git-prompt.zsh
zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
    zdharma-continuum/history-search-multi-word \
  OMZL::git.zsh \
  OMZP::git \
  OMZP::colored-man-pages \
  OMZP::asdf \
 as"completion" is-snippet \
  OMZP::pass/_pass

# zi as'null' lucid sbin wait'1' for \
#   Fakerr/git-recall \
#   davidosomething/git-my \
#     atload'export _MENU_THEME=legacy' \
#   arzzen/git-quick-stats \
#     make'install' \
#   tj/git-extras

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# fnm
FNM_PATH="/home/thierry/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

setopt nohistverify nosharehistory

# Some environment variables
export MAIL=/var/mail/$USERNAME
export LESS="-cFix3MRW --mouse --wordwrap"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=$(tput cols)
export MANCOLOR=true
export HELPDIR=/usr/local/share/zsh/5.9/help/ # directory for run-help function to find docs

MAILCHECK=300
HISTSIZE=500000
SAVEHIST=500000
DIRSTACKSIZE=20

# Watch for my friends
#watch=( $(<~/.friends) )       # watch for people in .friends file
watch=(notme)                   # watch for everybody but me
LOGCHECK=180                    # check every 5 min for login/logout activity
WATCHFMT='%n %a %l from %m at %t.'

# Set/unset  shell options
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
setopt globcomplete
setopt complete_aliases
unsetopt bgnice autoparamslash beep

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
#zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile
#zmodload -a zsh/zftp zftp
#zmodload zsh/mathfunc
zmodload zsh/sched
zmodload zsh/terminfo
zmodload zsh/termcap

bindkey -e                 # emacs key bindings

# bindkey -v               # vi key bindings

# Some nice key bindings
bindkey '^X^Z' universal-argument ' ' magic-space
bindkey '^X^A' vi-find-prev-char-skip
bindkey '^Xa' _expand_alias
bindkey '^Z' accept-and-hold
# bindkey -s '\M-/' \\\\
# bindkey -s '\M-=' \|

# <Ctrl-x><Ctrl-e> to edit command-line in EDITOR

autoload -Uz edit-command-line && zle -N edit-command-line
bindkey "^X^E" edit-command-line
# bindkey "${key_info[Control]}x${key_info[Control]}e" edit-command-line

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
#bindkey "^[[A" history-beginning-search-backward-end
#bindkey "^[[B" history-beginning-search-forward-end
#bindkey "^[OA" history-beginning-search-backward-end
#bindkey "^[OB" history-beginning-search-forward-end
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey "^[OA" history-search-backward
bindkey "^[OB" history-search-forward

bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

### ctrl+arrows
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
# urxvt
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word

### ctrl+delete
bindkey "\e[3;5~" kill-word
# urxvt
bindkey "\e[3^" kill-word

### ctrl+backspace
bindkey '^H' backward-delete-char

### ctrl+shift+delete
bindkey "\e[3;6~" kill-line
# urxvt
bindkey "\e[3@" kill-line
# Ctrl-W - delete to last space
# Alt-Backspace - delete last path element
autoload -Ud select-word-style
select-word-style bash_completion
zle -N backward-kill-space-word backward-kill-word-match
zstyle :zle:backward-kill-space-word word-style space
bindkey '^W' backward-kill-space-word

# Completion Styles

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*::::' show-completer true
zstyle ':completion:*::::' use-cache true
# show-completer
# use-cache

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors \
    'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'
    
# insert all expansions for expand completer
zstyle ':completion:*:expand:*' tag-order all-expansions

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' special-dirs false

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zstyle ':completion:*:(cd|mv|cp):*' ignore-parents parent pwd

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# command for process lists, the local web server details and host completion
zstyle ':completion:*:processes' command 'ps -o pid,nice,args'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:kill:*:processes' command 'ps xo pid,user,command'
zstyle ':completion:*:urls' local 'www' '/usr/local/httpd/htdocs' 'public_html'
zstyle '*' hosts $hosts
# Highlight the current autocomplete option
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Better SSH/Rsync/SCP Autocomplete
zstyle ':completion:*:(scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

# Allow for autocomplete to be case insensitive
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'
zstyle ':completion:*:*:ssh:*' users

# Filename suffixes to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' \
    '*?.old' '*?.pro'
# the same for old style completion
#fignore=(.o .c~ .old .pro)

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'

alias addspam="rspamc learn_spam ~/Maildir/spam; doveadm expunge -u thierry mailbox spam all"
alias addham="rspamc learn_ham ~/Maildir/ham; doveadm expunge -u thierry mailbox ham all"
mailpath=("${MAIL}?You have new mail in ${MAIL}.")
while IFS= read -d $'\0' -r file ; do
    mailpath+=("${file}?You have new mail in ${${file#*/Maildir/}:h}")
done < <(fd -0 -g -H -E '{Spam,All Mail,Drafts,Sent Mail,Trash}' new ~/Maildir/)

# for i in $(fd -H -E "Spam|All|Drafts|Sent|Trash" new ~/Maildir/); do
# for i in ~/Maildir/**/new(/Ne:'[[ ! $REPLY =~ ".*Spam|All|Drafts|Sent|Trash.*" ]]':); do
    # mailpath+=("${i}?You have new mail in ${i:h:t}.")
  # done
#pgrep goimapnotify >/dev/null || {nohup goimapnotify -conf $HOME/.imapnotifyrc >/dev/null 2>&1} &|
export CLICOLOR=true
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export LS_COLORS=$LSCOLORS
export EZA_COLORS="uu=0:gu=0"

#export IP_VERSION=4
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

export FZF_DEFAULT_COMMAND='ag -g .'  # Used by: fzf-lua (neovim plugin)
export FZF_CTRL_T_COMMAND='fd --strip-cwd-prefix'
eval "$(fzf --zsh)"

if test "$(uname -o)" = "FreeBSD"; then
  PREFIX=/usr/local
elif test "$(uname -o)" = "Android"; then
  PREFIX=/data/data/com.termux/files/usr
  NOGPG=true
else
  PREFIX=/usr
fi

if [ -n $NOGPG ]; then
  ${PREFIX}/bin/keychain -q ${HOME}/.ssh/id_ed25519 &|
  source ${HOME}/.keychain/`hostname`-sh
else
  export GPG_TTY=`tty`
  ${PREFIX}/bin/keychain -q ${HOME}/.ssh/id_ed25519 72C04C1879BCFF67 &|
  source ${HOME}/.keychain/`hostname`-sh-gpg
fi

# export TERMINAL=xterm

# secret-tool
# pv (pipe viewer)

eval "$(atuin init zsh --disable-up-arrow)"

# zprof
if [[ ! $TTY =~ "ttyv" ]] && [ -z "$TMUX" ]; then
        { tmux new-session -t $(hostname -s); exit; }
fi

