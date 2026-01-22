-- Enable soft wrapping
vim.opt_local.wrap = true

-- Wrap at words (don't split words in the middle)
vim.opt_local.linebreak = true

-- Preserve indentation when wrapping (optional but recommended)
vim.opt_local.breakindent = true

-- word count command
vim.keymap.set("n", "<leader>cw", "<cmd>VimtexCountWords<cr>", { buffer = true, desc = "Word Count" })
vim.keymap.set("n", "<leader>cc", "<cmd>VimtexCompile<cr>", { buffer = true, desc = "Toggle Compilation" })
