# Personal NeoVim Configuration using LazyVim

My personal configuration aimed at Python development and writing documentation using `markdown`. It is built on top of the LazyVim distribution. I have not included many popular plugins to make it minimal and functional. Some of the configurations are added on top of good work done by others.

To make use of the configuration, you should have the latest version of `neovim`. I have the following version at the time of writing this document:-

```bash
nvim --version 
NVIM v0.10.2
Build type: RelWithDebInfo
LuaJIT 2.1.1725453128
Run "nvim -V1 -v" for more info
```

For better user experience I recommend using [neovide](https://github.com/neovide/neovide).

# Installation

## Install System Packages

```bash
paru -Sy luarocks jedi-language-server pyright marksman ruff bashls tree-sitter nodejs git wl-clipboard python-pynvim 
```

## Backup Existing `nvim` Configurations

Following command is required:-

```bash
mv ~/.config/nvim{,.bak}
```

Following commands are optional but recommended:-

```bash
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Clone Repo

```bash
git clone https://github.com/wxguy/nvim.git ~/.config/nvim
```

then start your `nvim` wait for all plugins to get installed:-

```bash
nvim
```

## Test Installation

Ensure that all plugins are installed and configured correctly using `:checkhealth` command. If any Error is found, you need to install those specific packages manually.

## Important

The configurations rely on pyright for auto-completion. If you find pyright delays in providing suggestion, then it is most likely that you have kept you python file in a place you have deep subdirectories i.e. home directory. To overcome this, you have to move your file in a directory having proper Python package directory structure. 