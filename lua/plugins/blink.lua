return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none", -- Disable default presets to fully control keys

      -- Map Enter to 'fallback' (behaves like normal Enter)
      ["<CR>"] = { "fallback" },

      -- Map Tab to select and accept the item
      ["<Tab>"] = { "select_and_accept", "fallback" },

      -- Maintain standard navigation (Up/Down or C-p/C-n)
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },

      -- Maintain scrolling docs
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
  },
}
