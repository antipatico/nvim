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
  end
}
