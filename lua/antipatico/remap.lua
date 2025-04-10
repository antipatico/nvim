-- require("netrw")
-- not used anymore, now using Oil

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy the selected text to the system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy the entire line to the system clipboard" })
vim.keymap.set("n", "<leader>pp", [["+p]], { desc = "Paste text from the system clipboard (after)" })
vim.keymap.set({"n", "v"}, "<leader>pP", [["+P]], { desc = "Paste text from the system clipboard (before)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep the cursor to the center of the buffer when scrolling down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep the cursor to the center of the buffer when scrolling up"})
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep the cursor to the center of the buffer when searching down" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep the cursor to the center of the buffer when seraching up" })
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode using CTRL+C" })
