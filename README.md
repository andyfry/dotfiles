# Setting up a new machine
- Open Terminal
- /bin/bash -c "$(curl https://www.andrewdalefry.com/files/newmac.sh)"


## Files
- newmac.sh - Initialize a brand Mac so that setup.sh can be run.
- setup.sh - Performs the actual update of the system.
- Brewfile - oconfiguration for the installation of applications.
- config - A Directory that holds all the configuration files.
- scripts - A Directory that holds helper functions for installation.
- macos.sh - Configures macOS via the commandline.

### newmac.sh
- Can be downloaded from my website and executed.
- Installs Homebrew and Commandline tools needed to setup a new system.
- Clones my dotfiles repository that has all the configuration and scripts to setup a new system.
- Runs the setup.sh in the dotfiles directory.

### setup.sh
- Symlink the ~/.config directory to the config directory.
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

## TODO
- symlink files error handling
- continue editing MacOS Settings
- update macos.sh feedback
- Homebrew apps
- Should the repo be called dotfiles? Is MacSetup better?
- Should I use a tool to install dotfiles e.g. stow?
- Should I use a bare git repository for dotfiles?
- Look into Hammerspoon
- Look into Alfred
- Dockutil for removing and adding dock items

## Notes
These are notes for me while I create these scripts.
Installing homebrew installs Xcode commandline tools.

#### Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#### Uninstall Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

### Git Repo
https://github.com/andyfry/dotfiles.git

