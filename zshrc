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
