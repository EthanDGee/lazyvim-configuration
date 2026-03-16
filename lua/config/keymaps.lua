-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Creature Comforts
vim.keymap.set("i", "jj", "<esc>")

-- zg saves to the global (this needs to account for multiple spell list )

-- zl saves specifically to local project file
vim.keymap.set("n", "zl", "2zg", { desc = "Add word to local list" })
