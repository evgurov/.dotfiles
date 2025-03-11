# Install Zsh

## Install zsh if it is not yet installed

### Ubuntu/Debian
```bash
sudo apt update && sudo apt install zsh -y
```

## Change default shell to zsh if needed

If you have sudo password:
```bash
chsh -s $(which zsh)
```
If you don't have password add this to the end of `.bashrc` file.
```
# Start zsh if it's available
if command -v zsh >/dev/null 2>&1; then
    exec zsh
fi
```
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

