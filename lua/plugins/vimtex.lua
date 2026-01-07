return {
  "lervag/vimtex",
  init = function()
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_view_general_viewer = "firefox"
    vim.g.vimtex_view_general_options = "@pdf" -- could be @pdf
  end,
}
