-- https://github.com/mbbill/undotree
-- Undotree allows you to see the undo tree of your edits for each file!
return {
  "mbbill/undotree",
  config = function() end,
  keys = {
    { "<leader>u", vim.cmd.UndotreeToggle }
  }
}
