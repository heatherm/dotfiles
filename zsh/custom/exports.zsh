# Language
export LANG=en_US.UTF-8

# Editor
export EDITOR=nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# Path
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

if command -v yarn >/dev/null 2>&1; then
  export PATH="$PATH:`yarn global bin`"
fi

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="./node_modules/.bin:$PATH"
export PATH="~/.fzf/bin:$PATH"
export PATH="$HOME/.nvm/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

export GTAGSLABEL="ctags"
export GTAGSCONF="$HOME/.globalrc"

export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --exclude node_modules --color=always'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi"