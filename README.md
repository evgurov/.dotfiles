# Installation guide

### Step 0: clone this repo

```bash
git clone git@github.com:evgurov/.dotfiles.git ~
```
### Step 1: Install GNU Stow

For managing symlinks I use [GNU Stow](https://www.gnu.org/software/stow/) tool. Check out the [installation guide](/docs/INSTALL_STOW.md).

**Inspiration**: [NEVER lose dotfiles again with GNU Stow](https://www.youtube.com/watch?v=NoFiYOqnC4o).

### Step 2: Install desired terminal emulator (If on PC)

I currently use [Kitty](https://sw.kovidgoyal.net/kitty/).

Stow kitty config:
```bash
cd ~/.dotfiles
stow kitty
```

### Step 3: Install zsh

Install [zsh](https://www.zsh.org/), [oh-my-zsh](https://ohmyz.sh/) and some handy plugins. Check out the [installation guide](/docs/INSTALL_ZSH.md).

Stow zsh config:
```bash
cd ~/.dotfiles
stow zsh
```

### Step 4: Install tmux

Install [tmux](https://github.com/tmux/tmux) if not yet installed. Check [installation guide](/docs/INSTALL_TMUX.md).

Stow tmux config:
```bash
cd ~/.dotfiles
stow tmux
```

### Step 5: Install neovim

Install [neovim](https://neovim.io/), check the [installation guide](/docs/INSTALL_NVIM.md).

Stow nvim config:
```bash
cd ~/.dotfiles
stow nvim
```
