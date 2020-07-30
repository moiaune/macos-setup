# MacOS Setup

DISCLAIMER: This setup is heavily inpsired by [w3cj](https://github.com/w3cj/dotfiles) and [codinggarden](https://github.com/codinggarden/vscode-settings).

## Applications

### Initial

```bash
xcode-select --install
```

### Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
```

### iTerm2

```bash
brew cask install iterm2
```

1. Preferences -> Appearance -> General -> Theme = Minimal
2. Preferences -> Appearance -> Tabs -> Show tab even when there is only one tab
2. Preferences -> Appearance -> Tabs -> Uncheck "Stretch tabs to fill bar"
3. Preferences -> Profiles -> General -> Reuse previous session's directory
4. Preferences -> Profiles -> Colors -> Foreground = RGB(0, 255, 0)
5. Preferences -> Profiles -> Keys -> Presets -> Natural Text Editing

### Bash

```bash
brew install bash # latest version of bash
sudo nano /etc/shells
# add /usr/local/bin/bash as first entry to the list
chsh -s /usr/local/bin/bash
cd ~
nano .bash_profile
# Copy content from ./dotfiles/.bash_profile in this repo
```

### Git

```bash
brew install git
brew install vcprompt
```

### Rectangle

Open-Source alternative to Spectacle

```bash
brew cask install rectangle
```

### Alfred

```bash
brew cask install alfred
```

1. System Preferences -> Keyboard -> Shortcuts -> Spotlight -> Disable "Show spotlight search"
2. Alfred Preferences -> General -> Change hotkey to cmd+space 
3. Alfred Preferences -> General -> Launch Alfred at login
4. Alfred Preferences -> Features -> Default Results -> Extras -> Check "Folder"
5. Alfred Preferences -> Appearance -> Alfred macOS Dark

### Firefox

```bash
brew cask install firefox
```

1. Go through settings
2. Install following add-ons
  * uBlock Origin
  * Privacy Badger
  * Stylus (add dark theme for github and wikipedia)
  * Vue Devtools

### Node Version Manager (NVM) & Node/NPM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install stable
sudo npm install -g lite-server eslint
```

### Setup project folder

```bash
mkdir ~/code
```

### Install Anonymous Pro Font

```
https://www.marksimonson.com/fonts/view/anonymous-pro
```

### Visual Studio Code

```bash
brew cask install visual-studio-code
```

1. Download "vs-code-extensions.txt"
2. Run the following
  ```bash
  while read line; do code --install-extension "$line";done <vs-code-extensions.txt
  ```
3. Copy contents from vscode-settings.json to your settings.json
4. Copy contents from vscode-keybindings.json to your keybindings.json

## Finder

1. Preferences -> General -> Uncheck "CDs, DVDs and iPods"
2. Preferences -> General -> New Finder windows show = $HOME
3. Preferences -> Sidebar -> Uncheck recent, airdrop, movies, music, pictures, icloud drive, CDs, DVDs and iOS Devices, tags
4. Preferences -> Advances -> Check "Show all filename extensions"
5. Add $HOME and "code" folders to sidebar
6. View -> Show Tab Bar
7. View -> Show Status Bar
8. View -> Show Path Bar

## Desktop

1. Date & Time Preferences -> Clock -> Show Date (check)
2. Battery -> Show Percent
3. Wallpaper (see folder Wallpaper)
