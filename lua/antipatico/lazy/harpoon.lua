-- https://github.com/ThePrimeagen/harpoon
-- Harpoon is a simple plugin allowing to pin important files of a project
-- to quickly switch between them.
-- A project is defined by the CWD.
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
      { desc = "[HARPOON] Add file to list" })
    vim.keymap.set("n", "<leader>c", function() harpoon:list():clear() end,
      { desc = "[HARPOON] Clear file list" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "[HARPOON] Open menu" })
    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end,
      { desc = "[HARPOON] Open first file" })
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end,
      { desc = "[HARPOON] Open second file" })
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end,
      { desc = "[HARPOON] Open third file" })
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end,
      { desc = "[HARPOON] Open fourth file" })
    vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end,
      { desc = "[HARPOON] Replace first file" })
    vim.keymap.set("n", "<leader><C-j>", function() harpoon:list():replace_at(2) end,
      { desc = "[HARPOON] Replace second file" })
    vim.keymap.set("n", "<leader><C-k>", function() harpoon:list():replace_at(3) end,
      { desc = "[HARPOON] Replace third file" })
    vim.keymap.set("n", "<leader><C-l>", function() harpoon:list():replace_at(4) end,
      { desc = "[HARPOON] Replace fourth file" })
  end,
}
