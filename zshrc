export DISABLE_AUTO_TITLE="true"
setopt AUTO_PUSHD
setopt PROMPT_SUBST

if [ -z "$HISTFILE" ]; then
  HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt inc_append_history
setopt share_history # share command history data
setopt extended_glob


fpath=(/usr/local/share/zsh-completions $fpath)
fpath=($HOME/.zsh/functions $fpath)

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/heathrmoor/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

for file in $HOME/.zsh/plugins/**/*.zsh
do
  source $file
done

for file in $HOME/.zsh/custom/**/*.zsh
do
  source $file
done

for file in $HOME/.zsh/secrets/**/*.zsh
do
  source $file
done

# Add RVM to PATH for scripting. Make sure this is the last
# PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_COLOR="yellow"
SPACESHIP_TIME_FORMAT="%D{%H:%M:%S} %F{white}\uf073%f %F{$SPACESHIP_TIME_COLOR}%D{%d.%m.%y}%f"
SPACESHIP_EXIT_CODE_SHOW="true"
SPACESHIP_GIT_BRANCH_PREFIX="\uF126 "
SPACESHIP_GIT_STATUS_DIVERGED="%F{black}\uf074%f"
SPACESHIP_GIT_STATUS_BEHIND="%F{magenta}\uf019%f"
SPACESHIP_GIT_STATUS_AHEAD="%F{cyan}\uf093"
SPACESHIP_GIT_STATUS_ADDED="%F{green}\uf457%f"
SPACESHIP_GIT_STATUS_DELETED="%F{red}\uf014%f"
SPACESHIP_GIT_STATUS_MODIFIED="%F{blue}\uf069%f"
SPACESHIP_GIT_STATUS_RENAMED="%F{white}\uf044%f"
SPACESHIP_GIT_STATUS_STASHED="%F{white}\uf01c%f"
SPACESHIP_GIT_STATUS_UNMERGED="\ue726"
SPACESHIP_GIT_STATUS_UNTRACKED="%F{yellow}\uf4a3%f"
SPACESHIP_GIT_STATUS_PREFIX=" %F{red}\ue0b7%f"
SPACESHIP_GIT_STATUS_SUFFIX="%F{red}\ue0b5%f"
SPACESHIP_DIR_COLOR="blue"
SPACESHIP_DIR_PREFIX="%F{$SPACESHIP_DIR_COLOR}\uf07c%f "
SPACESHIP_CHAR_SYMBOL="\ue601 "

SPACESHIP_PROMPT_ORDER=(
  user     # before prompt char
  dir
  host     #
  git
  node
  ruby
  exec_time
  line_sep
  pyenv
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  time     #
)