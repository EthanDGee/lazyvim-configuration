-- ==============================================================================
-- LaTeX Filetype Plugin Configuration (after/ftplugin/tex.lua)
-- Optimized for "Ventilated Prose" (One sentence per physical line)
-- ==============================================================================

-- 1. Indentation (4 spaces)
vim.opt_local.expandtab = true   -- Uses spaces instead of actual \t characters
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.autoindent = true  -- Ensures pressing Enter matches the previous line's indent
vim.opt_local.smartindent = true

-- 2. Visual Wrapping
vim.opt_local.wrap = true
vim.opt_local.linebreak = true   -- Wraps at whole words
vim.opt_local.breakindent = true -- Aligns the wrapped portion with the current indent

-- 3. Auto-Formatting Protections
vim.opt_local.textwidth = 0      -- Disables hard-wrapping at a specific column limit
-- Remove 't' (auto-wrap text), 'c' (auto-wrap comments), and 'a' (auto-format paragraphs)
vim.opt_local.formatoptions:remove({ "t", "c", "a" })

-- 5. Keymaps
local map = vim.keymap.set
local opts = { buffer = true, silent = true }

-- Vimtex keymaps

map("n", "<leader>cc", "<cmd>VimtexCompile<cr>", vim.tbl_extend("force", opts, { desc = "Toggle Compilation" }))
map("n", "<leader>cw", "<cmd>VimtexCountWords<cr>", vim.tbl_extend("force", opts, { desc = "Word Count" }))
map("n", "<leader>cv", "<cmd>VimtexView<cr>", vim.tbl_extend("force", opts, { desc = "View PDF" }))
map("n", "<leader>ce", "<cmd>VimtexErrors<cr>", vim.tbl_extend("force", opts, { desc = "Show Compile Errors" }))
map("n", "<leader>ca", "<cmd>VimtexClean<cr>", vim.tbl_extend("force", opts, { desc = "Clean Aux Files" }))

-- Enable source code viewing by toggling symbol conceal
map("n", "<leader>cz", function()
    local current_level = vim.opt_local.conceallevel:get()
    if current_level == 0 then
        vim.opt_local.conceallevel = 2
        vim.notify("Conceal ON (Symbols Replaced)", vim.log.levels.INFO)
    else
        vim.opt_local.conceallevel = 0
        vim.notify("Conceal OFF (Raw Source Code)", vim.log.levels.INFO)
    end
end, vim.tbl_extend("force", opts, { desc = "Toggle Symbol Conceal" }))