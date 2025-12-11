return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    -- Change the auto completion from <enter> to <tab>
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      -- Remove <CR> if present
      ["<CR>"] = nil,
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    })
  end,
}
