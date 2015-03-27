brew update

brew tap thoughtbot/formulae
brew install rcm

brew install vim --override-system-vi
brew install docker
brew install go
brew install node
brew install tmux
brew install fish 

brew install caskroom/cask/brew-cask
brew cask install google-chrome --appdir="/Applications"
brew cask install google-drive --appdir="/Applications" --force
brew cask install dropbox --appdir="/Applications" --force
brew cask install iterm2 --appdir="/Applications" --force
brew cask install vmware-fusion --appdir="/Applications" --force
brew cask install vagrant --appdir="/Applications" --force
brew cask install virtualbox --appdir="/Applications" --force
brew cask install transmission --appdir="/Applications" --force
brew cask install vlc --appdir="/Applications" --force
brew cask install dwihn0r-keepassx --appdir="/Applications" --force
brew cask install sublime-text3 --appdir="/Applications" --force
brew cask install spotify --appdir="/Applications" --force
brew cask install caskroom/homebrew-versions/java6
brew cask install intellij-idea-ce --appdir="/Applications" --force
brew cask install java --force
brew cask install cyberduck --appdir="/Applications" --force
brew cask install keka --appdir="/Applications" --force

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
