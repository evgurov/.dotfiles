# Installing GNU Stow

## 1. Installing GNU Stow on an SSH Server (No sudo Access)
Since you don’t have root privileges, you need to install Stow in your home directory.

### Step 1: Download GNU Stow Source Code
Log in to your SSH server and download the latest GNU Stow release:
```bash
mkdir -p ~/local/src
cd ~/local/src
wget http://ftp.gnu.org/gnu/stow/stow-2.4.1.tar.gz  # Update the version if needed
tar -xvzf stow-2.4.1.tar.gz
cd stow-2.4.1
```

### Step 2: Build and Install Stow in User Directory
Configure the installation to use your home directory (`~/local`):
```bash
./configure --prefix=$HOME/local
make
make install
```

### Step 3: Add Stow to PATH
Modify your shell configuration file (e.g., `~/.bashrc` or `~/.zshrc`) to include Stow in your path:
```bash
echo 'export PATH="$HOME/local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc  # Apply changes immediately
```

### Step 4: Verify Installation
```bash
stow --version
```
If you see Stow's version, it’s installed successfully.

---

## 2. Installing GNU Stow on a Personal Computer (With sudo Access)

### Option 1: Install Using Package Manager (Recommended)
#### For Debian/Ubuntu**
```bash
sudo apt update
sudo apt install stow -y
```
#### For Arch Linux
```bash
sudo pacman -S stow
```
#### For macOS (Homebrew)
```bash
brew install stow
```

### Option 2: Install from Source (For Latest Version)
If you want the latest version or your package manager doesn’t have Stow:
```bash
cd /usr/local/src
sudo wget http://ftp.gnu.org/gnu/stow/stow-2.4.1.tar.gz  # Update version if needed
sudo tar -xvzf stow-2.4.1.tar.gz
cd stow-2.4.1
sudo ./configure
sudo make
sudo make install
```

### Verify Installation
```bash
stow --version
```

This method ensures that Stow is installed globally and available for all users.

---

## Need Help?
For more information, check out the [GNU Stow official page](https://www.gnu.org/software/stow/).
