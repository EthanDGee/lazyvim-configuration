-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Creature Comforts
vim.keymap.set("i", "jj", "<esc>")

-- zl saves specifically to local project file
vim.keymap.set("n", "zl", "2zg", { desc = "Add word to project-local dictionary" })

-- zL marks word as wrong in the local project file
vim.keymap.set("n", "zL", "2zw", { desc = "Add wrong word to local dictionary" })

-- zul undoes the local addition
vim.keymap.set("n", "zul", "2zug", { desc = "Undo local dictionary addition" })
