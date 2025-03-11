# 📚 Installing Neovim (Local & Global)

This guide provides step-by-step instructions to install **Neovim** either **locally (without sudo)** or **globally (with sudo access)** on Linux.

---

## 🚀 Local Installation (Without `sudo`)

If you don’t have root access, you can install Neovim in your home directory.

### 1️⃣ **Download Prebuilt Binary (Recommended)**
1. Open a terminal.
2. Run the following commands to download and install Neovim:
   ```bash
   mkdir -p $HOME/local/bin
   cd $HOME/local/bin

   # Download the latest Neovim binary
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

   # Make it executable
   chmod +x nvim.appimage

   # Rename for convenience
   mv nvim.appimage nvim
   ```
3. Add Neovim to your `PATH` so you can use it from anywhere:
   ```bash
   echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.zshrc
   source ~/.zshrc
   ```
4. Verify the installation:
   ```bash
   nvim --version
   ```

---

## 🛠️ Alternative: Build Neovim from Source  
If the prebuilt binary doesn't work or you need the latest version, you can compile Neovim from source.

### 1️⃣ **Clone and Build Neovim**
1. Install the necessary dependencies (if not already installed).
2. Run the following commands:
   ```bash
   mkdir -p $HOME/local/src
   cd $HOME/local/src

   # Clone the Neovim repository
   git clone https://github.com/neovim/neovim.git
   cd neovim

   # Build Neovim with a custom installation prefix
   make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/local" CMAKE_BUILD_TYPE=Release -j$(nproc)

   # Install Neovim locally
   make install
   ```
3. Add Neovim to your `PATH`:
   ```bash
   echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.zshrc
   source ~/.zshrc
   ```
4. Verify the installation:
   ```bash
   nvim --version
   ```

---

## 🌍 Global Installation (Requires `sudo`)

If you have **sudo** privileges, install Neovim system-wide so all users can access it.

### 1️⃣ **Install via Package Manager**
#### 🟢 **For Debian/Ubuntu**
```bash
sudo apt update
sudo apt install -y neovim
```

#### 🔴 **For Arch Linux**
```bash
sudo pacman -S neovim
```

### 2️⃣ **Verify the Installation**
```bash
nvim --version
```

---

## 🎉 Conclusion
Neovim is now installed! You can launch it by running:
```bash
nvim
```
Let me know if you need further assistance. 🚀

