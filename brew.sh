# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install cask
brew tap caskroom/cask
brew tap caskroom/fonts

# install apps from brew
brew install n
brew install z

# install apps from brew cask
brew cask install atom
brew cask install alfred
brew cask install amethyst
brew cask install google-chrome
brew cask install slack
brew cask install spotify

# install fonts from brew cask
brew cask install font-fira-code

# install node from n
n stable
