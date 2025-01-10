-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- map <leader>; to dashboard
vim.keymap.set("n", "<leader>;", "<CMD>:lua Snacks.dashboard()<CR>", opts)

-- Neorg shortcuts
vim.keymap.set("n", "<leader>wt", "<CMD>Neorg workspace trading<CR>", opts)
vim.keymap.set("n", "<leader>ww", "<CMD>Neorg workspace work<CR>", opts)
vim.keymap.set("n", "<leader>wj", "<CMD>Neorg journal custom<CR>", opts)
vim.keymap.set("n", "<leader>wi", "<CMD>Neorg inject-metadata<CR>", opts)
vim.keymap.set("n", "<leader>wl", "<CMD>Neorg keybind all core.looking-glass.magnify-code-block<CR>", opts)

-- Telescope projects
vim.keymap.set("n", "<leader>fp", "<CMD>Telescope projects<CR>", opts)

-- return to normal mode from insert mode in iron repl
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
