-- ================ Netrw custom keymaps ================
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.keymap.set("n", "<leader>cd", function()
      vim.cmd("execute 'cd' b:netrw_curdir")
    end, { buffer = true, desc = "Change working directory to Netrw current directory" })
    
    vim.keymap.set('n', 'l', '<CR>', { remap = true, buffer = true, desc = "Navigate downwards" })
    vim.keymap.set('n', 'h', '-^', { remap = true, buffer = true, desc = "Navigate upwards" })
    vim.keymap.set('n', 'H', 'u', { remap = true, buffer = true, desc = "Navigate back" })
  end
})
-- ================ Netrw custom keymaps end ================

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Project view: go back to Netrw"})
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy the selected text to the system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy the entire line to the system clipboard" })
vim.keymap.set("n", "<leader>pp", [["+p]], { desc = "Paste text from the system clipboard (after)" })
vim.keymap.set({"n", "v"}, "<leader>pP", [["+P]], { desc = "Paste text from the system clipboard (before)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep the cursor to the center of the buffer when scrolling down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep the cursor to the center of the buffer when scrolling up"})
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep the cursor to the center of the buffer when searching down" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep the cursor to the center of the buffer when seraching up" })
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode using CTRL+C" })
