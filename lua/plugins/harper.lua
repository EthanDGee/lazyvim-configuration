return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        harper_ls = {
          settings = {
            ["harper-ls"] = {
              userDictPath = "~/.config/nvim/lua/plugins/harper-dictionary.txt",
              linters = {
                SpelledNumbers = false,
                SentenceCapitalization = false,
                ToDoHypen = false, -- To avoid TODO: Triggers
              },
              markdown = {
                IgnoreLinkTitle = true,
              },
            },
          },
        },
      },
    },
  },
}
