DISABLE_UNTRACKED_FILES_DIRTY="true"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export OM_ZSH="home/palmerd/.zsh/.oh-my-zsh"
export ZSH="/home/palmerd/.zsh"

export NVIM_APPNAME="nvim-LazyVim"
alias nvim-orig="export NVIM_APPNAME=nvim; nvim"
alias lvim="export NVIM_APPNAME=nvim-LunarVim; nvim"
alias cdvim="cd ~/.config/nvim-LazyVim"
alias cdvimlo="cd ~/.local/share/nvim-LazyVim/"
alias vimzsh="nvim ~/.zsh/.zshrc"
alias vimvim="nvim ~/.config/nvim-LazyVim"
alias vimlvim="nvim ~/.local/share/nvim-LazyVim"
alias vimhypr="nvim ~/.config/hypr/"

alias cdswap="cd ~/.local/state/nvim-LazyVim/swap"

alias sourcezsh="source ~/.zsh/.zshrc"

alias jedi="sshfs root@jedi-temple:/root/apps/ /remote; cd /remote"



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="random"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh/.oh-my-zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse
plugins=(git colored-man-pages command-not-found colorize copyfile cp dircycle extract genpass vundle web-search dnf systemd themes docker-compose docker nvm)
#chucknorris copydir
zstyle ':omz:plugins:nvm' lazy yes

#POWERLINE_SHORT_HOST_NAME="true"
POWERLINE_HIDE_HOST_NAME="true"

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
#
# Load additional completion functions
fpath=($ZSH/.zsh-completions/src $fpath)


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

source /home/palmerd/.zsh/.oh-my-zsh/oh-my-zsh.sh
# Here is the reference to the master alias file
if [ -f $HOME/.zsh/.rcfiles/alias ]; then
        source $HOME/.zsh/.rcfiles/alias
else
        print "404: alias file not found"
fi

# Here is reference to keymap file

if [ -f $HOME/.zsh/.rcfiles/zshkeymaps ]; then
        source $HOME/.zsh/.rcfiles/zshkeymaps
else
        print "404: file not found"
fi


export PATH="/home/palmerd/.local/bin:/home/palmerd/bin:$PATH"
export PATH=$PATH:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/home/palmerd/.npm/bin:/home/palmerd/.yarn/bin/



zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:commands' ignored-patterns '*.[1-9]' '*.[^1-9]*' '*.md' '*~' '*,'
zstyle ':completion:*:*:*:default' file-sort modification reverse
zstyle ':completion:*:*:*:default' file-patterns 'globbed-files:globbed-directories'
autoload -Uz compinit 
compinit -i






# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/palmerd/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/palmerd/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/palmerd/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/palmerd/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<








# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/palmerd/menubar/out/smolmenubar-linux-x64/resources/app/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/palmerd/menubar/out/smolmenubar-linux-x64/resources/app/node_modules/tabtab/.completions/electron-forge.zshalias config='/usr/bin/git --git-dir=/home/palmerd/.cfg/ --work-tree=/home/palmerd'




#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
alias bfg="java -jar $HOME/Downloads/bfg-1.14.0.jar"

alias pip='function _pip(){
    if [ $1 = "search" ]; then
        pip_search "$2";
    else pip "$@";
    fi;
};_pip'

fpath+=$HOME/.zsh/.zfunc

export MOZ_ENABLE_WAYLAND=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.zsh/.p10k.zsh ]] || source $HOME/.zsh/.p10k.zsh




export PATH=/home/palmerd/.local/bin:/home/palmerd/bin:/home/palmerd/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/home/palmerd/.local/share/nvim-LazyVim/mason/bin:/home/palmerd/anaconda3/condabin:/home/palmerd/.local/bin:/home/palmerd/bin:/home/palmerd/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/home/palmerd/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/usr/lib64/ccache:/home/palmerd/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/palmerd/.dotnet/tools:/opt/rocm/bin:/opt/rocm/profiler/bin:/opt/rocm/opencl/bin:/opt/rocm/hip/bin:/var/lib/snapd/snap/bin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/home/palmerd/.npm/bin:/home/palmerd/.yarn/bin/:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/home/palmerd/.npm/bin:/home/palmerd/.yarn/bin/:~/.config/rofi/scripts
