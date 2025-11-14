# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Path to binaries
export PATH="$HOME/bin:$PATH"
export PATH="/home/redley/.local/share/gem/ruby/3.4.0/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

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
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="F{yellow}..."

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

# zsh-autosuggestions variables
    
# ZSH_AUTOSUGGEST_ACCEPT_WIDGETS = "^E"
# ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS = 

# oh-my-zsh
plugins=(
    git
    extract
    zsh-syntax-highlighting
    sudo
    colored-man-pages
    fzf
    history-substring-search
    zsh-autosuggestions
)
eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/bubblesline.omp.json)"

#Zoxide shit
_ZO_ECHO=1

#LS colors
export LS_COLORS="di=1;33:ln=1;36:so=1;33:pi=1;37:ex=1;32"

# ========= UNIQUE, NON-BASIC HIGHLIGHTING ==========

ZSH_HIGHLIGHT_STYLES[path]='fg=#FF9AD5,bold,underline'
# Commands (ls, cd, git, etc.)
ZSH_HIGHLIGHT_STYLES[command]='fg=#34FFC7,bold'

# Builtins (echo, read, export)
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#FFD447,bold'

# Reserved words (if, for, while, do, done)
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#B37AFF,bold'

# Aliases
ZSH_HIGHLIGHT_STYLES[alias]='fg=#34FFC7,bold'

# Functions
ZSH_HIGHLIGHT_STYLES[function]='fg=#FFD447,bold'

# Precommands (sudo, command, exec)
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#FF6FD5,bold'

# Strings: "hello", 'world'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#FF6FD5'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#FF6FD5'

# Variables: $HOME, $PATH, $1
ZSH_HIGHLIGHT_STYLES[assign]='fg=#6BE9FF'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#6BE9FF'
ZSH_HIGHLIGHT_STYLES[parameter]='fg=#6BE9FF'

# Options: -l, --help
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#B37AFF'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#B37AFF'

# Operators: | > < =
ZSH_HIGHLIGHT_STYLES[assign-bracket]='fg=#CC7FFF'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#CC7FFF'

# Errors
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF5F45,bold'
ZSH_HIGHLIGHT_STYLES[unknown-command]='fg=#FF5F45,bold'

# Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#62646D'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#B03078'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias hyprcfg="cd $HOME/.config/hypr"
alias what="cd $HOME/coding/what && nvim what.txt"
alias nvimcfg="cd $HOME/.config/nvim/lua"
alias waybarcfg="cd $HOME/.config/waybar"

autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

bindkey -v

#remove mode switching delay
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
    echo -ne '\e[1 q'
}
zle -N zle-keymap-select

# Use block shape cursor on startup.
echo -ne '\e[1 q'

# Use block shape cursor for each new prompt.
preexec() {
   echo -ne '\e[1 q'
}

zle-line-init() { zle -K vicmd; }
zle -N zle-line-init

_omp_redraw-prompt() {
  local precmd
  for precmd in $precmd_functions; do
    $precmd
  done

  zle .reset-prompt
}

function _omp_zle-keymap-select() {
    if [ "${KEYMAP}" = 'vicmd' ]; then
        export POSH_VI_MODE="command"
    else
        export POSH_VI_MODE="insert"
    fi

    _omp_redraw-prompt
}
_omp_create_widget zle-keymap-select _omp_zle-keymap-select

# reset to default mode at the end of line input reading
function _omp_zle-line-finish() {
    export POSH_VI_MODE="insert"
}
_omp_create_widget zle-line-finish _omp_zle-line-finish

# Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# while in fact you would be in INS mode.
# Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# so if anything else depends on it, we will not break it.
TRAPINT() {
    export POSH_VI_MODE="insert"
    return $(( 128 + $1 ))
}

#my custom bindings
bindkey '^@' forward-word
bindkey '^e' end-of-line

# Also set block cursor when shell starts
echo -ne '\e[2 q'
# Set the initial cursor to a block
echo -ne '\e[2 q'

#ruby
eval "$(rbenv init -)"
#python
eval "$(pyenv init -)"
