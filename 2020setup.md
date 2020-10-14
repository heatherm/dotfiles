New Compy Setup

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)”

brew cask install google-chrome
brew cask install 1password
#manual setup with secret key
brew cask install slack 

Download VPN from nyu https://www.nyu.edu/its/software/vpn/anyconnect-macos-4.8.00175-predeploy-k9.dmg

#manual zoom intstall

defaults write com.apple.menuextra.battery ShowPercent YES

create new ssh key and upload to GitHub: https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

brew install gh

brew install python
brew install spotify

manual install https://www.adobe.com/solutions/ebook/digital-editions/download.html

brew cask install notion
	
https://gist.github.com/ibraheem4/ce5ccd3e4d7a65589ce84f2a3b7c23a3

brew install postgres

manual ruby mine download
https://www.jetbrains.com/ruby/download/download-thanks.html?platform=mac

create ~/.alacritty.yml
brew cask install alacritty

brew tap heroku/brew && brew install heroku

brew install gpg2 (actually installs gpg)
gpg --keyserver pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/liokai/.rvm/scripts/rvm
ram install ruby-2.7

add to .bashrc:
  export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/

brew tap homebrew/cask-fonts
brew cask install font-inconsolata-nerd-font

brew tap epk/epk
brew cask install font-sf-mono-nerd-font

brew install blueutil

brew install erlang
curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s

brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk15

brew install exa
brew install neofetch
brew install zsh
brew install zsh-completions
brew install fasd
brew install fzf
brew install direnv

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

add default git config

brew install diff-so-fancy

sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions

chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions

pip install notebook

brew install ffmpeg


rvm default
gem install neovim
brew tap neovim/neovim
brew install neovim —HEAD

