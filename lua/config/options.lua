-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Line Number Settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Add end of line editing
vim.opt.virtualedit = "onemore" -- cursor at end of line
vim.opt.whichwrap:append("<,>,[,],h,l") -- enable cursor to wrap around endings of lines
