#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/boneyard
brew tap caskroom/fonts
brew tap caskroom/drivers

brew install git git-extras wget amazon-ecs-cli \
autoconf postgresql	sqlite nvm \
terraform awscli \
kops kubernetes-cli kubernetes-helm	\
zsh docker-machine pgcli redis zsh-completions \
docker-machine-driver-xhyve ruby


brew cask install font-inconsolata
brew cask install font-source-code-pro

# Updated python/pip
brew install python
pip install --upgrade setuptools
pip install --upgrade pip

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
brew cask install caskroom/drivers/sonos

# cask quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo


# verify
brew doctor

curl -L https://gist.githubusercontent.com/buildmaster/f6a13f0503e50972142d4d420b442134/raw/b30377ede4f5da3d8726089ebe8b4dc57e47f8f0/.zshrc > ~/.zshrc


#others
# zoom.us
# tweetbot