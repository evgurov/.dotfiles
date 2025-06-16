-- Set tab behavior
vim.opt.tabstop = 4 -- Display tab as 4 spaces
vim.opt.shiftwidth = 4 -- Indentation level
vim.opt.softtabstop = 4 -- Space count when pressing Tab
vim.opt.expandtab = true -- Convert tabs to spaces
-- Remaps
vim.g.mapleader = " " -- Set leader
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Set line numbers
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Set rulers
vim.opt.colorcolumn = "100"

-- Set clipboard to copy and paste
vim.opt.clipboard="unnamedplus"
