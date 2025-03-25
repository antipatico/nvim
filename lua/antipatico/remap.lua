-- Project view: go back to netrw (file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Use <leader>cd to change directory tu current Netrw folder
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.keymap.set("n", "<leader>cd", function()
      vim.cmd("execute 'cd' b:netrw_curdir")
    end, { buffer = true, desc = "Change working directory to Netrw current directory" })
  end
})
