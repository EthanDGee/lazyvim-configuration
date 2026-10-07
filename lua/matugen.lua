 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#1f1f1f',
    base01 = '#333333',
    base02 = '#2e2e2e',
    base03 = '#696969',
    base04 = '#b6afaf',
    base05 = '#f3f2f2',
    base06 = '#f3f2f2',
    base07 = '#f3f2f2',
    base08 = '#fd4663',
    base09 = '#cf6e6e',
    base0A = '#d86464',
    base0B = '#e46767',
    base0C = '#e99696',
    base0D = '#ec9393',
    base0E = '#e99696',
    base0F = '#f4bebe',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('TelescopeBorder',         { fg = '#696969',             bg = '#1f1f1f' })
  hi('TelescopePromptNormal',   { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('TelescopePromptBorder',   { fg = '#696969',             bg = '#1f1f1f' })
  hi('TelescopePromptPrefix',   { fg = '#e46767',             bg = '#1f1f1f' })
  hi('TelescopePromptCounter',  { fg = '#b6afaf',  bg = '#1f1f1f' })
  hi('TelescopePromptTitle',    { fg = '#1f1f1f',             bg = '#e46767' })
  hi('TelescopePreviewTitle',   { fg = '#1f1f1f',             bg = '#d86464' })
  hi('TelescopeResultsTitle',   { fg = '#1f1f1f',             bg = '#cf6e6e' })
  hi('TelescopeSelection',      { fg = '#f3f2f2',          bg = '#2e2e2e' })
  hi('TelescopeSelectionCaret', { fg = '#e46767',             bg = '#2e2e2e' })
  hi('TelescopeMatching',       { fg = '#e46767',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('MiniPickBorder',         { fg = '#696969',             bg = '#1f1f1f' })
  hi('MiniPickPrompt',   { fg = '#f3f2f2',          bg = '#1f1f1f' })
  hi('MiniPickPromptPrefix',   { fg = '#e46767',             bg = '#1f1f1f' })
  hi('MiniPickBorderText',    { fg = '#1f1f1f',             bg = '#e46767' })
  hi('MiniPickMatchCurrent',      { fg = '#f3f2f2',          bg = '#2e2e2e' })
  hi('MiniPickPromptCaret', { fg = '#e46767',             bg = '#2e2e2e' })
  hi('MiniPickMatchRanges',       { fg = '#e46767',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
