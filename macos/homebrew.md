# Homebrew / brew
Package manager for macOS

## Package definitions
1) Formulae
Formulae are used to install command-line software—tools and utilities you run in the Terminal. A formula is a Ruby script that tells Homebrew where to find the software (usually source code or pre-built binaries), how to build or install it, and what dependencies it needs.
2) Casks
Casks are used to install macOS graphical applications (GUI apps), fonts, and large binary files. A cask is also a Ruby script, but it describes how to download, install, and manage macOS apps—typically by downloading .dmg, .pkg, or .zip files and moving the app to /Applications

## Repositories
- Default Repositories
Homebrew comes with built-in taps like homebrew/core (for formulae) and homebrew/cask (for GUI apps).
- TAP (additional, third-party repositories)
Taps in Homebrew are additional repositories (usually Git repositories) that contain extra formulae, casks, or commands not included in Homebrew’s default repositories. 
You can add (“tap”) third-party or custom repositories using:
$ brew tap <user>/<repo>
List installed taps:
$ brew tap
Remove a tap:
$ brew untap <user>/<repo>
Intall software from tap:
$ brew install user/repo/formula


## Commands
- intall formula or cask
brew install <name>
brew install --cask <cask-name>
- uninstall 
brew uninstall <name>
brew uninstall --cask <cask-name>
- upgrade all installed packages
brew upgrade
- upgrade specific
brew upgrade <name>
- list intalled packages
brew list
brew list --formulae   # Only CLI tools
brew list --casks      # Only GUI apps
- info about a package
brew info <name>
- search for a package 
brew search <name>

- update brew and list of available packages
brew update
- show outdated packages
brew outdated
- remove older versions and clear cache
brew cleanup -n
the "-n" flag is for dry run
- remove unused dependencies
brew autoremove
