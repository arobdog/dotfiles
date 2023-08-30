#### dotfiles
My configuration files

### General Setup

## Mac

Homebrew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### zsh

Run the following commands to get zsh, auto suggestions and syntax highlighting.
```
brew install zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

source ~/.zshrc
```

### Nvim

```
brew install neovim
brew install ripgrep
brew install code-minimap
```

## Setup
Go to packer-setup.lua first and fix errors (comment out offending sections).
Then save file (:w) and the packer packages should install automatically, then shout it out (:so).

## Dependencies
- Install node.js for LSP language servers (Mason)
- Live grep for telescope fuzzy finder: https://github.com/BurntSushi/ripgrep
- Minimap view: https://github.com/wfxr/code-minimap

