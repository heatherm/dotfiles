fpath=(/usr/local/share/zsh-completions $fpath)

#printf "$(heroku autocomplete:script zsh)" >> ~/.zshrc

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/heathrmoor/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall