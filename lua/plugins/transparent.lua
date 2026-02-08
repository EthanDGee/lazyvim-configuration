return {
  "xiyaowong/transparent.nvim",
  lazy = false,

  keys = {
    { "<leader>ut", "<cmd>TransparentToggle<cr>", desc = "Toggle Transparency" },
  },
  config = function(_, opts)
    require("transparent").setup(opts)

    -- nukes anything starting with these names
    require("transparent").clear_prefix("BufferLine")
    require("transparent").clear_prefix("lualine")
    require("transparent").clear_prefix("NeoTree")
  end,

  opts = {
    extra_groups = {
      "NormalFloat",
      "LazyNormal",
      "MasonNormal",
      "LazyGitNormal",
    },
  },
}
