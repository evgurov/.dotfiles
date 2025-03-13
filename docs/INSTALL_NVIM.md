# Installing Neovim (Local & Global)

This guide provides step-by-step instructions to install **Neovim** either **locally (without sudo)** or **globally (with sudo access)** on Linux.

---

## Local Installation (Without `sudo`)

If you don’t have root access, you can install Neovim in your home directory.

### **Download Prebuilt Binary (Recommended)**
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
   export PATH=$HOME/local/bin:$PATH
   ```
4. Verify the installation:
   ```bash
   nvim --version
   ```

---

## Global Installation (Requires `sudo`)

If you have **sudo** privileges, install Neovim system-wide so all users can access it.

### **Install via Package Manager**
#### **For Debian/Ubuntu**
```bash
sudo apt update
sudo apt install -y neovim
```
