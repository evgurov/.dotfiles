# tmux, TPM, and tmux-catppuccin Installation Guide

This guide will walk you through installing `tmux`, the `Tmux Plugin Manager (TPM)`, and the **Catppuccin** theme for tmux.

## Prerequisites
- A Unix-based operating system (Linux, macOS, WSL on Windows)
- `tmux` installed or will be installed in the following steps

## Step 1: Install tmux

### **For Ubuntu/Debian-based systems:**
```sh
sudo apt update
sudo apt install tmux
```

### **For Fedora:**
```sh
sudo dnf install tmux
```

### **For macOS (using Homebrew):**
```sh
brew install tmux
```

### **For Arch Linux:**
```sh
sudo pacman -S tmux
```

Verify that tmux is installed by checking the version:
```sh
tmux -V
```

---

## Step 2: Install Tmux Plugin Manager (TPM)

1. First, navigate to your `~/.tmux` directory (create it if it doesn't exist):
    ```sh
    mkdir -p ~/.tmux/plugins
    ```

2. Clone the TPM repository into the `~/.tmux/plugins` directory:
    ```sh
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```

3. Add the following lines to your `~/.tmux.conf` file to configure TPM:
    ```sh
    # List of plugins
    set -g @plugin 'tmux-plugins/tpm'
    
    # Other plugins go here
    # set -g @plugin 'some/plugin'

    # Initialize TMUX plugin manager
    run '~/.tmux/plugins/tpm/tpm'
    ```

4. Reload tmux configuration or restart tmux:
    ```sh
    tmux source-file ~/.tmux.conf
    ```

---

## Step 3: Install tmux-catppuccin Theme

1. Add the `tmux-catppuccin` plugin to your `~/.tmux.conf` file after the TPM initialization line:
    ```sh
    # Catppuccin tmux theme
    set -g @plugin 'catppuccin/tmux'
    ```

2. Reload your tmux configuration:
    ```sh
    tmux source-file ~/.tmux.conf
    ```

---

## Step 4: Install Plugins via TPM

After configuring TPM and adding the `tmux-catppuccin` plugin, install the plugins by pressing **`prefix + I`** (default `prefix` is `Ctrl+b`).

This will install `tmux-catppuccin` and any other plugins listed in your `.tmux.conf`.

---

## Step 5: Enjoy the Catppuccin Theme

Once the installation is complete, your tmux should now be using the **Catppuccin** theme, which provides a colorful and aesthetic look.

---

## Optional: Customizing tmux-catppuccin

To customize the theme, you can modify `~/.tmux.conf` with the following options:

### Change the background color:
```sh
set -g @catppuccin-background 'dark'   # Choose 'dark' or 'light'
```

### Change the theme flavor:
```sh
set -g @catppuccin-flavor 'macchiato'  # Other options: 'latte', 'frappe', 'mocha'
```

After making any changes, reload the tmux configuration:
```sh
tmux source-file ~/.tmux.conf
```

---

## Troubleshooting

- If `tmux` or TPM doesn't seem to work, ensure that you've correctly configured your `~/.tmux.conf` file and reloaded tmux by running:
    ```sh
    tmux source-file ~/.tmux.conf
    ```

- To check if TPM is working, run `prefix + I` to install or update plugins. If this doesn't work, ensure that you cloned the TPM repository correctly.

---

Happy tmuxing with Catppuccin! 🍵
