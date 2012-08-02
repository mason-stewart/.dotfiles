# Turn on my personal prompt
fpath=($HOME/.zsh/zsh-git/functions $fpath)
fpath=($HOME/.zsh/functions $fpath)
setopt promptsubst
autoload -Uz promptinit && promptinit
prompt rick

# Turn on completions
fpath=($HOME/.zsh/zsh-completions $fpath)
autoload -U compinit
compinit -i
# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Turn on ls colors
export CLICOLOR="Yes"
export LSCOLORS="exgxfxfxcxdxdxhbadbxbx"

# Configure history
## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# Activate any plugins
source $HOME/.zsh/plugins/*/*.zsh

# Local machine-specific configuration
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi

# Syntax highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# History substring searches
source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
