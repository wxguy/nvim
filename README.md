# Personal NeoVim Configuration using LazyVim

My personal configuration aimed at Python development, bash scripting and writing markdown. It is built on top of the LazyVim distribution. I have not included many popular plugins to make it minimal and functional.

To make use of the configuration, you should have the latest version of `neovim`. I have the following version at the time of writing this document:-

```bash
nvim --version
NVIM v0.10.4
Build type: RelWithDebInfo
LuaJIT 2.1.1736781742
Run "nvim -V1 -v" for more info
```

For better user experience I recommend using [neovide](https://github.com/neovide/neovide).

# Installation

## Install System Packages

```bash
paru -Sy luarocks ripgrep fd pyright marksman ruff bash-language-server tree-sitter nodejs git wl-clipboard python-pynvim npm fzf go wget lazygit bash-completion man-db shellcheck shfmt hunspell-en_gb english-wordnet yazi
```

## Option 1: Install as standalone `nvim` configuration (recommended)

```bash
git clone https://github.com/wxguy/nvim.git ~/.config/nvim-wxguy
```

then install plugins and start neovim:-

```bash
NVIM_APPNAME=nvim-wxguy nvim --headless "+Lazy! sync" +qa && NVIM_APPNAME=nvim-wxguy nvim
```

Once all actions completed, open neovim using:-

```bash
NVIM_APPNAME=nvim-wxguy nvim
```

finally, check the health of the configuration using `checkhealth` command. If everything is ok, update `~/.bashrc` or `~/.zshrc` file, depending on shell, with following alias and source it using `source ~/.bashrc` or `source ~/.zshrc`.

```bash
alias wxvim='export NVIM_APPNAME="nvim-wxguy" && exec -a "$NVIM_APPNAME" nvim -u "$HOME/.config/nvim-wxguy/init.lua" "$@"'
```

From now on, simply invoke `wxvim` to open `nvim` with the updated configuration or `wxvim /path/to/file.ext` for opening a specific file.

## Option 2: Install as part of `nvim` native configuration

With this option, you can use the configuration as part of `nvim` native configuration. This would remove extra configurations and make the repo configuration permanent. Use with caution and backup of your existing configuration is highly recommended.

### Backup Existing Configuration

Following command is required:-

```bash
mv ~/.config/nvim{,.bak}
```

Following is optional but recommended:-

```bash
mv ~/.local/share/nvim{,.bak} ~/.local/state/nvim{,.bak}  ~/.cache/nvim{,.bak}
```

### Clone Repo

```bash
git clone --depth=1 https://github.com/wxguy/nvim-config.git ~/.config/nvim
```

then execute the following command:-

```bash
nvim --headless "+Lazy! sync" +qa
```

```bash
nvim
```

## Test Installation

Ensure that all plugins are installed and configured correctly using `:checkhealth` command. If any errors are found, install those specific packages manually.

## Important

The configurations rely on `pyright` for auto-completion on Python files. If you find `pyright` delays in providing auto suggestions, then it is most likely that you have kept you Python file in a place having deep sub-directories i.e. home directory. To overcome this, you have to move your file in a directory having `proper` Python package directory structure.
