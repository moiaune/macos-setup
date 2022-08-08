# MacOS Setup

My current MacOS setup, using bash as default shell.

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

### Install and set default shell

```bash
brew install bash
brew install powershell

# Make sure both /usr/local/bin/bash and /usr/local/bin/pwsh is represented
sudo nano /etc/shells

# Change default shell to bash
chsh -s /usr/local/bin/bash
```

Close and reopen terminal.

### wget

```bash
brew install wget
```

### iTerm2

```bash
brew cask install iterm2
wget -O  "~/Downloads/Dracula+.itermcolors" "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula%2B.itermcolors"
wget -O  "~/Downloads/Gruvbox Dark.itermcolors" "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Gruvbox%20Dark.itermcolors"
wget -O  "~/Downloads/Andromeda.itermcolors" "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Andromeda.itermcolors"
wget -O "~/Downloads/catppuccin-mocha.itermcolors" "https://raw.githubusercontent.com/catppuccin/iterm/main/colors/catppuccin-mocha.itermcolors"
```

1. Preferences -> Appearance -> General -> Theme = Minimal
2. Preferences -> Appearance -> Tabs -> Show tab even when there is only one tab
3. Preferences -> Appearance -> Tabs -> Uncheck "Stretch tabs to fill bar"
4. Preferences -> Profiles -> General -> Reuse previous session's directory
5. Preferences -> Profiles -> Colors -> Color Presets -> Import -> Choose your .itermcolors file
6. Preferences -> Profiles -> Colors -> Color Presets -> Choose color scheme
7. Preferences -> Profiles -> Text -> Cursor -> Vertical Bar
8. Preferences -> Profiles -> Text -> Cursor -> Blinking Cursor (true)
9. Preferences -> Profiles -> Text -> Use built-in Powerline glyphs
10. Preferences -> Profiles -> Keys -> Presets -> Natural Text Editing
11. Preferences -> Appearance -> Dimming -> Dim inactive split panes (false)
12. Preferences -> Appearance -> Windows -> Hide scrollbars (check)

### Install git and download project files

```bash
brew install git
mkdir ~/code/github.com/madsaune && cd ~/code/github.com/madsaune
git clone git@github.com:madsaune/macos-setup.git
cd macos-setup
```

### Setup Bash profile

#### Install font

First, install `FantasqueSansMono` powerline font.

1. Download font

```bash
wget -O "~/Downloads/FantasqueSansMono.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip"
```

2. Unzip
3. Open .ttf files
4. Install font

#### Install oh-my-posh

```bash
brew tap jandedobbeleer/oh-my-posh
brew install oh-my-posh

cd ~/code/github.com/madsaune
git clone git@github.com:madsaune/milbo-omp-theme.git
```

#### Install `.profile`

```bash
cp ./dotfiles/.profile ~/.profile
```

### Setup Powershell profile and modules

Install modules from PSGallery, and create our Powershell profile.

```powershell
Install-Module -Name "oh-my-posh" -Scope CurrentUser -AllowPrerelease
Install-Module -Name "Get-ChildItemColor" -Scope CurrentUser -AllowClobber

Copy-Item -Path "./powershell/profile.ps1" -Destination $profile.CurrentUserAllHosts
```

Close and reopen iTerm2.

### Golang

```bash
brew install go
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

- uBlock Origin
- Privacy Badger
- Stylus (add dark theme for github and wikipedia)
- Vue Devtools

### Node Version Manager (NVM) & Node/NPM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install stable
sudo npm install -g lite-server eslint
```

### Visual Studio Code

```bash
brew cask install visual-studio-code
```

#### Install extensions

```bash
cd ~/code/github.com/madsaune/macos-setup/vscode

while read line; do code --install-extension "$line";done < extensions.txt

cp settings.json "~/Library/Application Support/Code/User/settings.json"
cp keybindings.json "~/Library/Application Support/Code/User/keybindings.json"
```

### NeoVim

#### Increase MacOS Key Repeat

To avoid lag when navigating in NeoVim we must increase our key repeat.

1. System Preferences -> Keyboard -> Key Repeat = 1 (a.k.a Fast)
2. System Preferences -> Keyboard -> Delay Until Repat = 2 (a.k.a Short + 1)

#### Install NeoVim

```bash
brew install neovim

cd ~/code/github.com/madsaune
git clone git@github.com:madsaune/nvim.git && cd nvim

./install.sh

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then open `nvim` and run `:PlugInstall` and `:CocUpdate`.

### Other Applications

```bash
brew install spotify
brew install insomnia
brew install microsoft-teams
brew install discord
brew install keepassxc
brew install time-out
brew install terraform@0.14.6
brew install azure-cli
brew install google-chrome

brew tap azure/functions
brew install azure-functions-core-tools@3
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
3. System Preferences -> Dock -> Check "Automatically hide and show the dock"

## Desktop

1. Date & Time Preferences -> Clock -> Show Date (check)
2. Battery -> Show Percent
3. Wallpaper (see folder Wallpaper)
