# Install Zsh

## Install zsh if it is not yet installed

### Ubuntu/Debian
```bash
sudo apt update && sudo apt install zsh -y
chsh -s $(which zsh)
```

### Arch Linux
```bash
sudo pacman -S zsh
chsh -s $(which zsh)
```

### macOS (Using Homebrew)
```bash
brew install zsh
chsh -s /bin/zsh
```

After installation, restart your terminal or log out and back in.

---

## Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Powerlevel10k Theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Restart your terminal and run:
```bash
p10k configure
```
or use [configuration](/zsh/.p10k.zsh) from this repo.

---

## Install Zsh Plugins

### Zsh Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Zsh Syntax Highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Reload your configuration:
```bash
source ~/.zshrc
```

