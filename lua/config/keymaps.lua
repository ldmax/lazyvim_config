-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- map <leader>; to dashboard
vim.keymap.set("n", "<leader>;", "<CMD>Alpha!<CR>", opts)

-- close current buffer
vim.keymap.set("n", "<leader>c", "<CMD>bd!<CR>", opts)

-- Neorg shortcuts
vim.keymap.set("n", "<leader>nw", "<CMD>Neorg workspace trading<CR>", opts)
vim.keymap.set("n", "<leader>nj", "<CMD>Neorg journal custom<CR>", opts)
vim.keymap.set("n", "<leader>ni", "<CMD>Neorg inject-metadata<CR>", opts)
