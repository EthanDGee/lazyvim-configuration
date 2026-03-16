-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Line Number Settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Add end of line editing
vim.opt.virtualedit = "onemore" -- cursor at end of line
vim.opt.whichwrap:append("<,>,[,],h,l") -- enable cursor to wrap around endings of lines

-- enable spelling by default
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Add a project-local spell file to the existing list of spell files
local local_spell = vim.fn.getcwd() .. "/.spell.utf-8.add"
local global_spell = vim.fn.expand("$HOME") .. "/.config/nvim/spell/en.utf-8.add"

-- Set both: Global is index 1, Local is index 2
vim.opt.spellfile = { global_spell, local_spell }
