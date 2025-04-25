-- https://github.com/tomasky/bookmarks.nvim
-- Add bookmarks and annotations, with icons per annotation
return {
  "tomasky/bookmarks.nvim",
  config = function()
    bm = require("bookmarks")
    bm.setup({
      save_file = vim.fn.expand "$HOME/.local/share/nvim/bookmarks",
      on_attach = function(bufnr)
        vim.keymap.set("n", "<leader>bb", bm.bookmark_toggle,
          { desc = "[BOOKMARKS] Toggle bookmark at current line" })
        vim.keymap.set("n", "<leader>ba", bm.bookmark_ann,
          { desc = "[BOOKMARKS] Add or edit bookmark annotation at current line" })
        vim.keymap.set("n", "<leader>bc", bm.bookmark_clean,
          { desc = "[BOOKMARKS] Clean all bookmarks in local buffer" })
        vim.keymap.set("n", "<leader>bC", bm.bookmark_clean,
          { desc = "[BOOKMARKS] Clean ALL bookmarks" })
        vim.keymap.set("n", "<leader>bn", bm.bookmark_next,
          { desc = "[BOOKMARKS] Jump to next bookmark in local buffer" })
        vim.keymap.set("n", "<leader>bp", bm.bookmark_prev,
          { desc = "[BOOKMARKS] Jump to previous bookmark in local buffer" })
--        vim.keymap.set("n", "<leader>bl", bm.bookmark_list,
--          { desc = "[BOOKMARKS] List all bookmarks" })
      end
    })
    local ok, telescope = pcall(require, "telescope")
    if ok then
      telescope.load_extension("bookmarks")
      vim.keymap.set("n", "<leader>bl", telescope.extensions.bookmarks.list,
        { desc = "[BOOKMARKS] Open Telescope search (list bookmarks)" })
    end
  end,
}
