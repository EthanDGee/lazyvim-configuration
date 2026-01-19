-- Navigate to the next page in the PDF
vim.keymap.set(
  "n",
  "<leader>cj",
  "<cmd>:lua require('pdfview.renderer').next_page()<CR>",
  { buffer = true, desc = "PDFview: Next page" }
)

-- Navigate to the previous page in the PDF
vim.keymap.set(
  "n",
  "<leader>ck",
  "<cmd>:lua require('pdfview.renderer').previous_page()<CR>",
  { buffer = true, desc = "PDFview: Previous page" }
)
