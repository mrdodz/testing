# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dodz/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="amuse"
#ZSH_THEME="agnoster"
#ZSH_THESE="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
ZSH_COLORIZE_TOOL=pygmentize
ZSH_COLORIZE_STYLE="vim"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  sudo
  chucknorris
  docker
  kubectl
  extract
  history
  z
  web-search
  zsh-navigation-tools
  zsh-autosuggestions
  colorize
  fzf
  gem
  yarn
  zsh-completions
  colored-man-pages
  terraform
  fast-syntax-highlighting
  zsh-syntax-highlighting
  p10k-promptconfig
  #zsh-autocomplete
  #zsh-prompt-benchmark
)

# Custom p10k theme
#P10K_PROMPT="p10k"
P10K_PROMPT="p10k"

HIST_STAMPS="dd/mm/yyyy"
DISABLE_UPDATE_PROMPT=false

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/kube-ps1/kube-ps1.plugin.zsh
source $ZSH/custom/plugins/zsh-z/zsh-z.plugin.zsh
#PS1='[\u@\h \W $(kube_ps1)]\$ '

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=${PATH}:${HOME}/Library/Python/3.7/bin

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#export EDITOR="code -w"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#* System & Formatting
  alias ssh='ssh -A'
  alias cat="bat --plain --theme TwoDark"
  alias catp='bat --plain --theme TwoDark'
  alias zshrc="vim ~/.zshrc"
  alias sz="source ~/.zshrc"
  alias pcat='pygmentize -f terminal256 -O style=monokai -g'
  alias cls="clear"
  alias listlinks='ls -l --color | grep "\->"'
  alias fff="fzf -e --preview 'bat --style=numbers --color=always {} | head -500'"
  alias nocomment='grep -Ev ^"(#|$)"'
  alias printcolors='for COLOR in {1..255}; do echo -en "\e[38;5;${COLOR}m${COLOR} "; done; echo;'
  alias tree='tree -C'
#* TaskBook
  alias task="tb -t @devops"
  alias note="tb -n @devops"
#* Net
  alias tunnels="lsof -i -n | egrep '\<ssh\>'"
  alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
  alias ote_speed='wget http://speedtest.ftp.otenet.gr/files/test1Gb.db'
  alias backup_uck='echo "Backing up to ~/Documents/Unifi..." | grep --color .; scp -r dodz@uck:/data/autobackup/ ~/Documents/Unifi'
#* Shortcuts
  alias pihole='open http://10.10.5.100/admin/'
  alias cloudkey='open https://10.10.5.4/'
  alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
  alias pull_all='~/Repos/pull_all.sh'
  alias calc='bc'
#* kubectl
  alias kn='kubens'
  alias kx='kubectx'
  alias kgnet='k get netpol'
  alias kdesnet='k describe networkpolicy'
  alias kgs='k get service'
  alias kge='k get events'
  alias kgew='k get events -o wide'
  alias kutil='kubectl get nodes --no-headers | awk '\''{print $1}'\'' | xargs -I {} sh -c '\''echo {} ; kubectl describe node {} | grep Allocated -A 5 | grep -ve Event -ve Allocated -ve percent -ve -- ; echo '\'''
  alias kleader="kubectl --namespace=kube-system get endpoints kube-controller-manager -o jsonpath='{.metadata.annotations.control-plane\.alpha\.kubernetes\.io/leader}' | jq '.holderIdentity'"
  alias kcidr="kubectl get nodes -o jsonpath='{.items[*].spec.podCIDR}'"
  alias ktp="kubectl top pod"
  alias ktn="kubectl top node"
  alias wkgp='watch kubectl get pods'
  alias wkgd='watch kubectl get deployment'
  alias wkgs='watch kubectl get service'
  alias kneat='kubectl neat'
  # alias pwgen1="pwgen -cnyB1 -r \`\"\' 25"
#* Docker
  alias di='docker images'
  alias drmi='docker rmi'
  alias dcls='docker container ls'
  alias dclsa='docker container ls -a'
  alias dcrm='docker container rm'
  alias dvls='docker volume ls'
  alias dvrm='docker volume rm'
  alias dvp='docker volume prune'
  alias dsp='docker system prune'
  alias db='docker build -t'
  alias dci='docker container inspect'
  alias dii='docker image inspect'
  alias dvi='docker volume inspect'
#* My Docker stuff
  
#* Use yh for Yaml Highlighter instead of Yarn Help
  alias yh="/usr/local/bin/yh"
  function kgso { kgs "$1" -o yaml | yh }  # Format kubectl get service with YAML Highlighter
#* Azure
  
#* Python
  alias python='python3'
  alias pip='pip3'
  alias py='python3'
#* terraform
  alias tf='terraform'
  alias tfinit='terraform init -backend-config=terraform.backend'
  alias tfa='terraform apply --parallelism=200'
#* Offices Temperature
  
#* Powerlevel
  alias p10kup="git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull"
#* EXA (https://the.exa.website/features/icons)
  alias lss="exa --long --git --icons --sort type"
#* Print 256 colors
  alias 256_colors='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/e50a28ec54188d2413518788de6c6367ffcea4f7/print256colours.sh | bash'
#* Doom Emacs
  #alias ems="emacs --bg-daemon"
  alias em="emacsclient -c -a emacs &"

#
#source ~/.zsh_plugins.sh
# History
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path /Users/dodz/.oh-my-zsh/cache
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
#source /usr/local/etc/bash_completion.d/az

# Oßther
setopt prompt_subst
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
DISABLE_MAGIC_FUNCTIONS=true
TOUCHBAR_GIT_ENABLED=true
PROMPT_EOL_MARK=''
export PATH=/usr/local/aws/bin:/usr/local/sbin:$PATH
export AWS_PROFILE=dodz

# Homebrew path (M1)
export PATH=/opt/homebrew/bin:$PATH

# Doom Emacs Path
export PATH=$HOME/.emacs.d/bin:$PATH

autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
autoload -U colors; colors

# THE FUCK PLUGIN
eval $(thefuck --alias)

# FUZZY FINDER
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf
export FZF_TMUX=0
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--exact
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --theme=TwoDark --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(vim {+} < /dev/tty > /dev/tty)'
--bind 'ctrl-v:execute(code {+})'
--bind 'shift-up:preview-page-up,shift-down:preview-page-down'
"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!{.git,venv,.vscode,.history}"'

# PLAY FORTUNE
echo
#fortune | grep --color .
tput setaf 3;fortune
echo

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.$P10K_PROMPT.zsh ]] || source ~/.$P10K_PROMPT.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Kubectl KREW
# Installed with brew install krew
export PATH="${PATH}:${HOME}/.krew/bin"

# Add my local bin
export PATH="${HOME}/bin:${PATH}"

# Added by Krypton
export GPG_TTY=$(tty)

# Check the weather
weather() {
  curl http://wttr.in/$1
}

# (The below instructions are intended for common
# shell setups. See the README for more guidance
# if they don't apply and/or don't work for you.)

# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

# Make sure to restart your entire logon session
# for changes to profile files to take effect.

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C $(which aws_completer) aws

# Chrome Bookmark Browser
b() {
  local bookmarks_path=~/Library/Application\ Support/Google/Chrome/Default/Bookmarks
  local jq_script='def ancestors: while(. | length >= 2; del(.[-1,-2])); . as $in | paths(.url?) as $key | $in | getpath($key) | {name,url, path: [$key[0:-2] | ancestors as $a | $in | getpath($a) | .name?] | reverse | join("/") } | .path + "/" + .name + "\t" + .url'
  jq -r $jq_script < "$bookmarks_path" \
  | sed -E $'s/(.*)\t(.*)/\\1\t\x1b[36m\\2\x1b[m/g' \
  | fzf --ansi \
  | cut -d$'\t' -f2 \
  | xargs open
}

# Like normal z when used with arguments but displays an fzf prompt when used without.
unalias z 2> /dev/null
z() {
    [ $# -gt 0 ] && zshz "$*" && return
    cd "$(zshz -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

# When opening .csv in Excel, they open without proper formatting. This prepends "sep=," to the beginning of the file and opens it
function fix_csv() {
  echo 'sep=,' | cat - $1 > $1.temp && mv $1.temp $1 && open $1
}

# Display the current kubecontext and namespace in Status Bar
function iterm2_print_user_vars() {
  iterm2_set_user_var kubecontext $(kubectl config current-context):$(kubectl config view --minify --output 'jsonpath={..namespace}')
}

# EXA
export EXA_COLORS="uu=38;5;249:un=38;5;241:gu=38;5;245:gn=38;5;241:da=38;5;245:sn=38;5;7:sb=38;5;7:ur=38;5;3;1:uw=38;5;5;1:ux=38;5;1;1:ue=38;5;1;1:gr=38;5;249:gw=38;5;249:gx=38;5;249:tr=38;5;249:tw=38;5;249:tx=38;5;249:fi=38;5;248:di=38;5;14:ex=38;5;1:xa=38;5;12:*.png=38;5;4:*.jpg=38;5;4:*.gif=38;5;4:*.md=38;5;214:*.py=38;5;156"

# Set VSCode as default Kube editor
export KUBE_EDITOR='code --wait'

# Git Find File
function git-find-file {
  for branch in $(git rev-list --all)
  do
    if (git ls-tree -r --name-only $branch | grep --quiet "$1")
    then
      echo $branch
    fi
  done
}

# Bash Insulter (distrotube)
if [ -f ~/Repos/bash-insulter/src/bash.command-not-found ]; then
    . ~/Repos/bash-insulter/src/bash.command-not-found
fi
