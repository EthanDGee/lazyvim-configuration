return {
  -- 1. Setup Treesitter for HTML and CSS syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "html", "css" })
      end
    end,
  },

  -- 2. Configure Language Servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Basic HTML language server for diagnostics and autocompletion
        html = {},
        -- Emmet for powerful snippet expansion (e.g., typing `div>ul>li*3` and hitting Tab)
        emmet_language_server = {
          filetypes = { 
            "html", 
            "css", 
            "javascriptreact", 
            "typescriptreact", 
            "vue", 
            "svelte" 
          },
        },
      },
    },
  },
}
