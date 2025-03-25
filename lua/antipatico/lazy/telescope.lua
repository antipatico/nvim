return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- Load the plugins and, most importantly, set the key binds
    require("telescope").setup({})
    local builtin = require("telescope.builtin")
    -- Project files: find files within the current project
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    -- Git files: find files within the current git repo
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    -- Project search: search string within project
    vim.keymap.set("n", "<leader>ps", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    -- Project search word: search word at cursor
    vim.keymap.set("n", "<leader>pws", function()
      local word = vim.fn.expand('<cword>')
      builtin.grep_string({ search = word })
    end)
    -- Project search big word: big word expands points, underscores and as such
    vim.keymap.set("n", "<leader>pWs", function()
      local word = vim.fn.expand('<cWORD>')
      builtin.grep_string({ search = word })
    end)
    -- Vim help: serach through internal Neovim help system
    vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
  end
}
