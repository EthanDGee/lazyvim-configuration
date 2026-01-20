return {
  "gisketch/triforce.nvim",
  dependencies = { "nvzone/volt" },
  config = function()
    require("triforce").setup({
      keymap = {
        show_profile = "<leader>cx",

        xp_rewards = {
          char = 1,
          line = 5, -- moderate xp for lines to reward readability
          save = 25, -- Less emphasis on saves
        },
      },
    })
  end,
}
