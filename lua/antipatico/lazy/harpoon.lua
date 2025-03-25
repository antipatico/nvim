return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = (function()
    local harpoon = require("harpoon")
    harpoon:setup()
    -- Add file to Harpoon list
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    -- Open Harpoon menu
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    
    -- Open Harpoon first file
    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    -- Open Harpoon second file
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
    -- Open Harpoon third file
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
    -- Open Harpoon fourth file
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

  end),
}
