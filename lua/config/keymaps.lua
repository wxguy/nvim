-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<F4>", ":w <bar> exec '!python '.shellescape('%')<CR>")

-- Select themes using Huez
vim.keymap.set("n", "<leader>tc", ":Huez <cr>", { desc = "Choose colour theme" })
