return {
  "2kabhishek/exercism.nvim",
  cmd = { "Exercism" },
  keys = {
    { "<leader>cxa", ":Exercism languages<CR>", desc = "Exercism: List available languages" },
    { "<leader>cxl", ":Exercism list<CR>", desc = "Exercism: List exercises" },
    { "<leader>cxt", ":Exercism test<CR>", desc = "Exercism: Run tests" },
    { "<leader>cxr", ":Exercism submit<CR>", desc = "Exercism: Submit solution" },
  }, -- add your preferred keybindings
  dependencies = {
    "2kabhishek/utils.nvim", -- required, for utility functions
    "2kabhishek/termim.nvim", -- optional, better UX for running tests
  },
  -- Add your custom configs here, keep it blank for default configs (required)
  opts = {
    exercism_workspace = "~/exercism", -- Default workspace for exercism exercises
    default_language = "cpp", -- Default language for exercise list
    max_recents = 30, -- Maximum number of recent exercises to keep
    icons = {
      concept = "", -- Icon for concept exercises
      practice = "", -- Icon for practice exercises
    },
  },
}
