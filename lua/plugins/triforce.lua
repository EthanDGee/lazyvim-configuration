return {
  "gisketch/triforce.nvim",
  dependencies = { "nvzone/volt" },
  config = function()
    require("triforce").setup({
      xp_rewards = {
        char = 0.25, -- Less character level reward
        line = 5, -- moderate reward for line count to promote readability
        save = 25, -- lower save reward
      },

      -- much higher leveling requirements across the board
      level_progression = {
        tier_1 = { min_level = 1, max_level = 9, xp_per_level = 1000 },
        tier_2 = { min_level = 10, max_level = 19, xp_per_level = 5000 },
        tier_3 = { min_level = 20, max_level = 49, xp_per_level = 10000 },
        tier_4 = { min_level = 50, max_level = 99, xp_per_level = 25000 },
        tier_5 = { min_level = 50, max_level = 75, xp_per_level = 50000 },
        tier_6 = { min_level = 76, max_level = 99, xp_per_level = 75000 },
        tier_7 = { min_level = 100, max_level = 149, xp_per_level = 100000 },
        tier_8 = { min_level = 150, max_level = math.huge, xp_per_level = 150000 },
      },

      -- add more long term achievements
      achievements = {
        -- Chars
        {
          id = "chars_1_000_000",
          name = "Word Smith",
          desc = "Type 1,000,000 characters",
          icon = "",
          check = function(stats)
            return stats.chars_typed >= 1000000
          end,
        },
        {
          id = "chars_10_000_000",
          name = "Published Author",
          desc = "Type 10,000,000 characters",
          icon = "",
          check = function(stats)
            return stats.chars_typed >= 10000000
          end,
        },

        -- Lines
        {
          id = "lines_10_000",
          name = "Master Fisherman",
          desc = "Type 10,000 lines",
          icon = "󰈺",
          check = function(stats)
            return stats.lines_typed >= 10000
          end,
        },
        {
          id = "lines_100_000",
          name = "Professional Linebacker",
          desc = "Type 100,000 lines",
          icon = "󰉟",
          check = function(stats)
            return stats.lines_typed >= 100000
          end,
        },

        -- Levels
        {
          id = "level_100",
          name = "Demi God",
          desc = "Reach level 100",
          icon = "󰈸",
          check = function(stats)
            return stats.level >= 100
          end,
        },
        {
          id = "level_250",
          name = "God-like",
          desc = "Reach level 250",
          icon = "󰈸",
          check = function(stats)
            return stats.level >= 250
          end,
        },

        -- Hours
        {
          id = "hours_1_000",
          name = "Senior Developer",
          desc = "Code for 1,000 hours",
          icon = "🧓",
          check = function(stats)
            return stats.time_coding >= 10000 * 3600
          end,
        },

        {
          id = "hours_10_000",
          name = "Gladwell Approved",
          desc = "Code for 10,000 hours",
          icon = "",
          check = function(stats)
            return stats.time_coding >= 10000 * 3600
          end,
        },
      },
    })

    vim.keymap.set("n", "<leader>cx", require("triforce").show_profile, { desc = "Show Triforce Stats" })

    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
        { "<leader>cx", desc = "Show Triforce Stats", icon = "\u{eb03}" },
      })
    end
  end,
}
