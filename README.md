# ~/.dotfiles

## Installation

Note: Ensure the main `perl` package has been installed from your system package manager.

``` sh
FRESH_LOCAL_SOURCE=JaredSharplin/.dotfiles bash <(curl -sL get.freshshell.com)
```

My dotfiles are managed by [fresh].

[fresh]: http://freshshell.com

These dotfiles contain a forked submodule of `kickstart.nvim` in the `nvim/` directory, which regularly pulls in upstream changes:
- [fork](https://github.com/JaredSharplin/kickstart-modular.nvim)
- [upstream](https://github.com/dam9000/kickstart-modular.nvim)

## Dependencies

Note: Not an exhaustive list, see installation instructions for additional dependencies

### Terminal & Shell
- [alacritty](https://github.com/alacritty/alacritty) - Terminal emulator
- [zellij](https://github.com/zellij-org/zellij) - Terminal multiplexer
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) - Zsh framework
- [antigen](https://github.com/zsh-users/antigen) - Zsh plugin manager
- [Jetbrains Mono NerdFont](https://www.nerdfonts.com/font-downloads) - Font with icons

### Development Tools
- [neovim](https://github.com/neovim/neovim) - Text editor
- [mise](https://github.com/jdx/mise) - Runtime version manager

### Git Tools
- [git-delta](https://github.com/dandavison/delta) - Enhanced git diff viewer
- [lazygit](https://github.com/jesseduffield/lazygit) - Git TUI
- [git-town](https://github.com/git-town/git-town) - Git workflow tool
- [diffnav](https://github.com/dlvhdr/diffnav) - Git diff pager with file tree

### GitHub Tools
- [GitHub CLI](https://github.com/cli/cli) - GitHub command line tool
- [gh-dash](https://github.com/dlvhdr/gh-dash) - GitHub dashboard TUI
- [gh-notify](https://github.com/meiji163/gh-notify) - GitHub notifications CLI

### System Utilities
- [zoxide](https://github.com/ajeetdsouza/zoxide) - Smart cd command
- [htop](https://github.com/htop-dev/htop) - Process viewer
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Fast text search
- [fd](https://github.com/sharkdp/fd) - Fast file finder
- [eza](https://github.com/eza-community/eza) - Modern ls replacement

### MacOS Only

- [Karabiner Elements](https://github.com/pqrs-org/Karabiner-Elements)
- [Rectangle](https://github.com/rxhanson/Rectangle)
- [Dash](https://kapeli.com/dash)

### Linux Only

- [keyd](https://github.com/rvaiya/keyd)
