return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require('telescope').setup({})
    -- Set keys. Needs to use config because telescope.builtin
    -- is not available in the keys step.
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Project find: find files by name" })
    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find git files" })
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end, { desc = "Search string in files" })
    vim.keymap.set('n', '<leader>pws', function()
      builtin.grep_string({ search = vim.fn.expand("<cword>") })
    end, { desc = "Search word at cursor in files" })
    vim.keymap.set('n', '<leader>pWs', function()
      builtin.grep_string({ search = vim.fn.expand("<cword>") })
    end, { desc = "Search big word (extend some symbols as dot) at cursor in files" })
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Search vim help" }) 
  end,
}
