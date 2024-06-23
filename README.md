```shell

# TODO

- try this solution for clearing linebreak: https://github.com/starship/starship/issues/560#issuecomment-1375794423

# brew
brew bundle install

# zsh
mkdir ~/.zsh
cp zsh/zshrc ~/.zshrc
cp zsh/*.zsh ~/.zsh
source ~/.zshrc

# vscode
cat vscode.extensions | xargs -n 1 code --install-extension
cp vscode.settings.json ~/Library/Application\ Support/Code/User/settings.json

# alfred
cp -r alfred ~/.alfred
```

# `asdf`

```shell
# add plugin
asdf plugin add nodejs
# install latest version
asdf install nodejs latest
# set .tool-versions
asdf global nodejs latest
```

# Firefox

- https://www.reddit.com/r/firefox/wiki/userchrome/

In Firefox, set: `about:config` > `toolkit.legacyUserProfileCustomizations.stylesheets` > `true`

```shell
~/Library/Application Support/Firefox/Profiles/…-release/chrome/userChrome.css
```

To inspect selectors for userChrome, go to `chrome://browser/content/browser.xhtml` and use the inspector tool.

# VS Code

```shell
# if monkey patch stops working
rm ~/Library/Application\ Support/Code/User/globalStorage/state.vscdb
```
