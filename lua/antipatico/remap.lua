-- require("netrw")
-- not used anymore, now using Oil

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]],
  { desc = "[NVIM] Copy the selected text to the system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]],
  { desc = "[NVIM] Copy the entire line to the system clipboard" })
vim.keymap.set("n", "<leader>pp", [["+p]],
  { desc = "[NVIM] Paste text from the system clipboard (after)" })
vim.keymap.set({"n", "v"}, "<leader>pP", [["+P]],
  { desc = "[NVIM] Paste text from the system clipboard (before)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz",
  { desc = "[NVIM] Keep the cursor to the center of the buffer when scrolling down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz",
  { desc = "[NVIM] Keep the cursor to the center of the buffer when scrolling up"})
vim.keymap.set("n", "n", "nzzzv",
  { desc = "[NVIM] Keep the cursor to the center of the buffer when searching down" })
vim.keymap.set("n", "N", "Nzzzv",
  { desc = "[NVIM] Keep the cursor to the center of the buffer when seraching up" })
vim.keymap.set("i", "<C-c>", "<Esc>",
  { desc = "[NVIM] Exit insert mode using CTRL+C" })
vim.keymap.set({"n", "v"}, "<leader>td", function() vim.diagnostic.enable(not vim.diagnostic.is_enabled()) end,
  { desc = "[NVIM] Toggle diagnostics" })
vim.keymap.set("n", "<leader>vb", "Va{",
  { desc = "[NVIM] Select current block" })
vim.keymap.set('i', '<C-Space>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'  -- Navigate down if popup is visible
  else
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-x><C-o>', true, true, true))
    return ''
  end
end, {expr = true, desc = "[NVIM] Autocomplete (omnicomplete remap)"})

