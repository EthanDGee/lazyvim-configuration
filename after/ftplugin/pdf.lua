-- Navigate to the next page in the PDF
vim.keymap.set(
  "n",
  "<leader>cj",
  "<cmd>:lua require('pdfview.renderer').next_page()<CR>",
  { desc = "PDFview: Next page" }
)

-- Navigate to the previous page in the PDF
vim.keymap.set(
  "n",
  "<leader>kk",
  "<cmd>:lua require('pdfview.renderer').previous_page()<CR>",
  { desc = "PDFview: Previous page" }
)
