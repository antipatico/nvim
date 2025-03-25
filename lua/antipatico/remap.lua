-- Project view: go back to netrw (file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ================ Netrw custom keymaps ================
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    -- Change directory: change directory tu current Netrw folder
    vim.keymap.set("n", "<leader>cd", function()
      vim.cmd("execute 'cd' b:netrw_curdir")
    end, { buffer = true, desc = "Change working directory to Netrw current directory" })
    -- Navigate downwards
    vim.keymap.set('n', 'l', '<CR>', { remap = true, buffer = true })
    -- Navigate upwards
    vim.keymap.set('n', 'h', '-^', { remap = true, buffer = true })
    -- Navigate back
    vim.keymap.set('n', 'H', 'u', { remap = true, buffer = true })
  end
})
-- ================ Netrw custom keymaps end ================

