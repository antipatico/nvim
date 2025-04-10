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
