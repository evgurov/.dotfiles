# Install Zsh

## Install Zsh on SSH Server (No sudo Access)

### Step 1: Download & Extract Zsh Source
```bash
mkdir -p $HOME/local/src
cd $HOME/local/src
wget https://sourceforge.net/projects/zsh/files/latest/download -O zsh.tar.xz
tar -xf zsh.tar.xz
cd zsh-*
```

### Step 2: Compile and Install
```bash
./configure --prefix=$HOME/local
make -j$(nproc) && make install
```

### Step 3: Add Zsh to PATH
```bash
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

### Step 4: Start Zsh
```bash
zsh
```

### Step 5: Make Zsh the Default Shell
```bash
echo 'exec $HOME/local/bin/zsh -l' >> ~/.bashrc
```
Then, restart your SSH session.

---

## Install Zsh on Personal Computer

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
sed -i 's|ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc
```
Restart your terminal and run:
```bash
p10k configure
```
or use `.p10k.zsh` configuration from this repo.

---

## Install Zsh Plugins

### Zsh Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "plugins=(zsh-autosuggestions \$plugins)" >> ~/.zshrc
```

### Zsh Syntax Highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=(zsh-syntax-highlighting \$plugins)" >> ~/.zshrc
```

Reload your configuration:
```bash
source ~/.zshrc
```

