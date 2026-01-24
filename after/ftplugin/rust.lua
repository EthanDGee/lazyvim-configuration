-- vim.keymap.set("i", "<", ">")({
--   buffer = true,
--   desc = "Enable auto pair for element type",
-- })
--
--
-- Set up commands to open local rust docs
vim.keymap.set("n", "<leader>cD", "<Nop>", { buffer = true, desc = "Open Rust Docs" })

local rust_doc_cmds = {
  b = { "book", "Open Rust Book" },
  s = { "std", "Open Rust Standard Library Docs" },
  r = { "reference", "Open Rust Reference" },
  e = { "edition", "Open Rust Editions Guide" },
  c = { "cargo", "Open Cargo Book" },
  t = { "test", "Open Rust Testing Docs" },
  n = { "nomicon", "Open Rustonomicon" },
}

for key, val in pairs(rust_doc_cmds) do
  vim.keymap.set("n", "<leader>cD" .. key, function()
    vim.fn.jobstart("rustup doc --" .. val[1], { detach = true })
  end, { buffer = true, desc = val[2] })
end
