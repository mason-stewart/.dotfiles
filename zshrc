fpath=($HOME/.zsh/zsh-git/functions $fpath)
fpath=($HOME/.zsh/zsh-completions $fpath)
fpath=($HOME/.zsh/functions $fpath)

setopt promptsubst
autoload -Uz promptinit && promptinit
prompt rick

autoload -U compinit
compinit -i
# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

export CLICOLOR="Yes"
export LSCOLORS="exgxfxfxcxdxdxhbadbxbx"

for plugin (bundler cloudapp); do
  source $HOME/.zsh/plugins/$plugin/$plugin.zsh
done

# Local machine-specific configuration
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
