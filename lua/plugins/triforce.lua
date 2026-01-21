return {
  "gisketch/triforce.nvim",
  dependencies = { "nvzone/volt" },
  config = function()
    require("triforce").setup({
      keymap = {
        show_profile = "<leader>cx",
      },

      xp_rewards = {
        char = 0.25, -- Less character level reward
        line = 5, -- moderate reward for line count to promote readability
        save = 25, -- lower save reward
      },

      -- much higher leveling requirements across the board
      level_progression = {
        tier_1 = { min_level = 1, max_level = 10, xp_per_level = 1000 },
        tier_2 = { min_level = 11, max_level = 20, xp_per_level = 5000 },
        tier_3 = { min_level = 21, max_level = math.huge, xp_per_level = 10000 },
      },
    })
  end,
}
