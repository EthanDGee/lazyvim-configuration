-- Map ' to ' in insert mode, just for this buffer.
-- This overrides the mini.pairs autopairing rule.
--
vim.keymap.set("i", "'", "'", {
  buffer = true,
  desc = "Disable autopair for single quote",
})
