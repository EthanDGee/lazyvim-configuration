return {
  "xiyaowong/transparent.nvim",
  lazy = false,

  keys = {
    { "<leader>ut", "<cmd>TransparentToggle<cr>", desc = "Toggle Transparency" },
  },
  config = function(_, opts)
    require("transparent").setup(opts)

    require("transparent").clear_prefix("BufferLine")
    require("transparent").clear_prefix("NeoTree")
    require("transparent").clear_prefix("WhichKey")
  end,

  opts = {
    extra_groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "LazyNormal",
      "MasonNormal",
      "LazyGitNormal",
      "WinBar",
      "WinBarNC",
      "WhichKeyNormal",
    },
  },
}
