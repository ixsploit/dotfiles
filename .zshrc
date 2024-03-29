ZSH_DISABLE_COMPFIX=true
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ulrichsteiger/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git vi-mode aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
if [ "$TMUX" = "" ]; then tmux; fi
source "${HOME}"/.ktx
source "${HOME}"/.ktx-completion.sh
source <(kubectl completion zsh) 
alias k='kubectl'
complete -F __start_kubectl k
alias c='cfcli'
alias f='fly -t hellofresh'
alias aeu='aws --region eu-west-1'
alias aus='aws --region us-east-1'
alias p3='python3'
#alias awsume=". awsume"
alias vim='nvim'
alias tf='terraform'
alias tg='terragrunt'
alias ama='awsume main-it.AdministratorAccess'
alias asso='aws-sso-util login'
alias akl='awsume k8s-live.SSOEKSLiveAdminRole; kubectx sso-eks-live-admin'
alias aks='awsume default, kubectx'
export aws_cli_auto_prompt=on-partial
export KUBECONFIG=/Users/ulrichsteiger/.kube/config:/Users/ulrichsteiger/.kube/eksconfig:/Users/ulrichsteiger/projects/k8s/eks/config
export PATH=$PATH:/Users/ulrichsteiger/Library/Python/3.8/bin/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Created by `userpath` on 2021-01-08 09:57:53
export PATH="$PATH:/Users/ulrichsteiger/.local/bin"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/opt/openvpn/sbin"
#export PATH=$(pyenv root)/shims:$PATH
export PATH="$PATH:/Users/ulrichsteiger/go/bin"
export PATH="$PATH:/Users/ulrichsteiger/.cargo/bin"
#needed for pyenv
export PATH=$(pyenv root)/shims:$PATH
export VAULT_ADDR=https://vault.hellosec.io
bindkey "^R" history-incremental-search-backward
