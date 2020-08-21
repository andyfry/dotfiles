# Dotfiles
Configuration files and and shell scripts to setup my machines.
This repository is a work in progress and probably always will be as I continue to evolve and improve my working environment.
These scripts are intended for macOS. Many of the config files will probably work for other OSs, but I havn't tested that. 

# Setting up a new machine
- Open Terminal
- /bin/bash -c "$(curl https://www.andrewdalefry.com/files/newmac.sh)"

## Files
- newmac.sh - Initialize a brand new Mac so that setup.sh can be run.
- setup.sh - Performs the actual update of the system.
- Brewfile - Configuration for the Homebrew package manager for the installation of applications.
- config - A Directory that holds all the configuration files.
- scripts - A Directory that holds helper functions for installation.
- macos.sh - Configures macOS via the commandline.
- bookmarks.html - A my website bookmarks exported from chrome.
- fish.sh - Make fish the default shell, setup the oh-my-fish package manager and install my prefered theme.
- projects.list - A list of github repositories to be cloned into a Projects Directory.

### newmac.sh
- Can be downloaded from my website and executed.
- Installs Homebrew and Commandline tools needed to setup a new system.
- Clones my dotfiles repository that has all the configuration and scripts to setup a new system.
- Runs the setup.sh in the dotfiles directory.

### setup.sh
- Symlink the ~/.config directory to the config directory in the dotfiles repository.
- Install software via brew bundle.
- Setup macOS settings by running .macos

### Brewfile
- Configuration for the Homebrew bundle command.
- Homebrew Repositories are added via tap.
- Commandline applications are added via brew.
- Desktop applications are added via cask.
- App Store applications are added via mas.

### macos.sh
- Configures macOS via the commandline
- Originally copied from Mathias Bynens
- Original File: https://github.com/mathiasbynens/dotfiles/blob/main/.macos
- I stripped out unneeded settings and changed defaults to meet my needs

## Not working
- Homebrew installation of qmk on Big Sur beta.

## TODO
- vscode settings
- clone repos
- Should the repo be called dotfiles? Is MacSetup better?
- Should .dotfiles be separate from installation scripts?

### setup.sh
- symlink files error handling

### macos.sh
- switch to using m-cli where possible
- fix macos desktop files
- Dockutil for removing and adding dock items
- continue editing MacOS Settings
- update macos.sh feedback

### fish.sh
- Needs to add fish to /etc/shells so it can be made the default
- Error Handling
- Messaging

## Notes
These are notes for me while I create these scripts.
Installing homebrew installs Xcode commandline tools.
- ! Worked fine on Catalina, had issuse during Big Sur beta.
- Test again when Big Sur support in Homebrew is finalized.

#### Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#### Uninstall Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

#### Install Oh My Fish
curl -L https://get.oh-my.fish | fish

### Git Repo
https://github.com/andyfry/dotfiles.git

