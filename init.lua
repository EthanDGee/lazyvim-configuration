-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set background to be transparent
local hl_groups = {
  "Normal",
  "NormalNC",
  "LineNr",
  "Folded",
  "NonText",
  "SpecialKey",
  "VertSplit",
  "WinSeparator",
  "SignColumn",
  "EndOfBuffer",
}

for _, group in ipairs(hl_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
end
