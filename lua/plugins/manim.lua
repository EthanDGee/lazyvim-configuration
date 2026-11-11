return {
  {
    "yeasin50/manim.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    init = function()
      -- 1. Polyfill for deleted ts_utils module
      if not package.loaded["nvim-treesitter.ts_utils"] then
        package.loaded["nvim-treesitter.ts_utils"] = {
          get_node_at_cursor = function(win)
            return vim.treesitter.get_node({ bufnr = win and vim.api.nvim_win_get_buf(win) or 0 })
          end,
          get_node_text = function(node, bufnr)
            return vim.treesitter.get_node_text(node, bufnr or 0)
          end,
        }
      end

      -- 2. Polyfill for deleted has_parser function
      local ok, parsers = pcall(require, "nvim-treesitter.parsers")
      if ok and type(parsers) == "table" and not parsers.has_parser then
        parsers.has_parser = function()
          -- Always return true to bypass the check, since LazyVim manages the Python parser
          return true
        end
      end
    end,
    keys = {
      { "<leader>mp", "<cmd>ManimPlay<cr>", desc = "Manim: Play Scene under cursor" },
      { "<leader>mr", "<cmd>ManimPlayFrom<cr>", desc = "Manim: Play from cursor line" },
    },
    opts = {
      export_args = {
        "-p",
        "-ql",
      },
    },
  },
}
