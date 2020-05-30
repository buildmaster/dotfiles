#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/boneyard
brew tap caskroom/fonts
brew tap caskroom/drivers

# Updated python/pip
brew reinstall python
pip install --upgrade setuptools
pip install --upgrade pip

brew install amazon-ecs-cli autoconf aws-iam-authenticator awslogs \
bash coreutils docker-machine docker-machine-driver-xhyve \
eksctl elasticsearch gdbm gettext git git-extras gnu-getopt go \
helm helmfile highlight icu4c ipcalc jq jason-c \
k6 kail kibana kobs krb6 kubernetes-cli kubernetes-helm \
libyubikey lua minikube ncurses node nvm pandoc \
pgcli pipx pkg-config postgresql prisma pyenv \
pyenv-virtualenv python readline redis ruby \
sops sqlite tfenv wget wireguard-go wireguard-tools \
xz yarn ykman ykpers zsh zsh-completions

sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

brew services start redis

brew cask install font-inconsolata
brew cask install font-source-code-pro
brew cask install font-fira-mono-for-powerline
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-fira-code



# cask apps
brew cask install aerial
brew cask install beersmith2
brew cask install docker
brew cask install google-chrome
brew cask install graphiql
brew cask install handbrake
brew cask install minikube
brew cask install postico
brew cask install slack
brew cask install firefox
brew cask install spotify
brew cask install steam
brew cask install iterm2
brew cask install alfred
brew cask install google-hangouts
brew cask install dash
brew cask install tunnelbear
brew cask install virtualbox
brew cask install 1password
brew cask install font-source-code-pro
brew cask install cleanmymac
brew cask install the-unarchiver	
brew cask install macdown
brew cask install airmail
brew cask install expo-xde
brew cask install battle-net
brew cask install postman
brew cask install shiftit
brew cask install genymotion
brew cask install keybase
brew cask install caskroom/drivers/sonos
brew cask install sequel-pro
brew cask install gpg-suite
brew cask install viscosity
brew cask install lastpass
brew cask install sonos
# cask quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo


# verify
brew doctor

curl -L https://gist.githubusercontent.com/buildmaster/f6a13f0503e50972142d4d420b442134/raw/d0a03bde40ea747c24c86183ac3125c56312a5d1/.zshrc > ~/.zshrc
curl -L https://gist.githubusercontent.com/buildmaster/04e49562581c1e7d33f0afcadc2dab03/raw/2c53b84f1f957b4b095d2af70c1f3d647a609366/settings.json > $HOME/Library/Application\ Support/Code/User/settings.json

#others
# zoom.us
# tweetbot