# Install TMUX, tpm and other plugins

## Step 1: Install tmux

### **For Ubuntu/Debian:**
```sh
sudo apt update
sudo apt install tmux
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

4. Reload tmux configuration or restart tmux:
    ```sh
    tmux source-file ~/.tmux.conf
    ```

---

## Step 4: Install Plugins via TPM

After configuring TPM and adding the plugins, install the plugins by pressing **`prefix + I`**.

This will install plugins listed in your `.tmux.conf`.

---
