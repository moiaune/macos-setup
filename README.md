# MacOS Setup

My current MacOS setup, using Powershell as default shell.

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
5. Preferences -> Profiles -> Text -> Cursor -> Vertical Bar
6. Preferences -> Profiles -> Text -> Use built-in Powerline glyphs
7. Preferences -> Profiles -> Keys -> Presets -> Natural Text Editing

### Install and set default shell

```bash
brew install powershell

# Make sure both /usr/local/bin/bash and /usr/local/bin/pwsh is represented
sudo nano /etc/shells

# Change default shell to pwsh
chsh -s /usr/local/bin/pwsh
```

Close and reopen iTerm2.

### Install git and download project files

```powershell
brew install git
mkdir ~/code && cd ~/code
git clone git@github.com:madsaune/macos-setup.git
cd macos-setup
```

### Setup Powershell profile and modules

First, install `FantasqueSansMono` powerline font.

1. Download font
  ```powershell
  iwr -Uri "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip" -OutFile "~/Downloads/FantasqueSansMono.zip"
  ```
2. Unzip
3. Open .ttf files
4. Install font

Then, install modules from PSGallery, and create our Powershell profile.

```powershell
Install-Module -Name "oh-my-posh" -Scope CurrentUser -AllowPrerelease
Install-Module -Name "Get-ChildItemColor" -Scope CurrentUser -AllowClobber

Copy-Item -Path "./dotfiles/Microsoft.PowerShell_profile.ps1" -Destination $profile
```

Close and reopen iTerm2.

### Golang

```powershell
brew install go
go get github.com/j18e/shell-prompt
```

### Rectangle

Open-Source alternative to Spectacle

```powershell
brew cask install rectangle
```

### Alfred

```powershell
brew cask install alfred
```

1. System Preferences -> Keyboard -> Shortcuts -> Spotlight -> Disable "Show spotlight search"
2. Alfred Preferences -> General -> Change hotkey to cmd+space 
3. Alfred Preferences -> General -> Launch Alfred at login
4. Alfred Preferences -> Features -> Default Results -> Extras -> Check "Folder"
5. Alfred Preferences -> Appearance -> Alfred macOS Dark

### Firefox

```powershell
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

### Visual Studio Code

```powershell
brew cask install visual-studio-code
```

#### Install extensions

```powershell
cd ~/code/macos-setup
gc ./vs-code-extensions.txt | % { code --install-extension $_ }
Copy-Item -Path "vscode-settings.json" -Destination "~/Library/Application Support/Code/User/settings.json"
Copy-Item -Path "vscode-keybindings.json" -Destination "~/Library/Application Support/Code/User/keybindings.json"
```

## Finder

1. Preferences -> General -> Uncheck "CDs, DVDs and iPods"
2. Preferences -> General -> New Finder windows show = $HOME
3. Preferences -> Sidebar -> Uncheck recent, airdrop, movies, music, pictures, icloud drive, CDs, DVDs and iOS Devices, tags
4. Preferences -> Advances -> Check "Show all filename extensions"
5. Add $HOME and "code" folders to sidebar
6. View -> Show Tab Bar
7. View -> Show Status Bar
8. View -> Show Path Bar

## Dock

1. System Preferences -> Dock -> Size -> Smallest
2. System Preferences -> Dock -> Position on screen -> Right
2. System Preferences -> Dock -> Check "Automatically hide and show the dock"

## Desktop

1. Date & Time Preferences -> Clock -> Show Date (check)
2. Battery -> Show Percent
3. Wallpaper (see folder Wallpaper)
