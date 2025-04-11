-- https://github.com/stevearc/oil.nvim
-- Oil is an amazing file navigator plugin for neovim that allows you to rename,
-- move, copy, delete and change file permissions using a text buffer. Thus,
-- it is easy to leverage your vi motions to quickly do file operations.
-- Moreover, it is possible to use Harpoon and save file views.
-- It is amazing!


local show_detailed_view = false

return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  tag = "v2.15.0",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = {
    columns = {
      "icon",
    },
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["L"] = "actions.select",
      ["H"] = "actions.parent",
      ["<C-l>"] = "actions.refresh",
      ["`"] = "actions.cd",
      ["_"] = "actions.open_cwd",
      ["g."] = "actions.toggle_hidden",
      ["gx"] = "actions.open_external",
      ["gs"] = "actions.change_sort",
      ["<leader>ff"] = {
        function()
          local ok, telescope = pcall(require, "telescope.builtin")
          if not ok then
            -- Telesope not found
            return
          else
            telescope.find_files({cwd = require("oil").get_current_dir()})
          end
        end,
        nowait = true,
        desc = "Find files in the current directory",
      },
      ["gd"] = {
        function()
          show_detailed_view = not show_detailed_view
          if show_detailed_view then
            require("oil").set_columns({"icon", "permissions", "size", "mtime"})
          else
            require("oil").set_columns({"icon"})
          end
        end,
        desc = "Toggle detailed view",
      },
    },
    view_options = {
      show_hidden = true,
      
      -- This function deifines what is considered a "hidden" file
      is_hidden_file = function(name, bufnr)
        return (name ~= ".." and (name:match("^%.") ~= nil))
      end,

      -- This function defines what will never be shown, even when show_hidden
      -- is set
      is_always_hidden = function(name, bufnr)
        return (name:match("^%.git$") ~= nil)
      end,
    }
  },
  keys = {
    { "<leader>pv", "<cmd>Oil %:h<cr>",
      { desc = "[OIL] Project view: open file viewer in current file folder" } },
    { "<leader>pr", "<cmd>Oil .<cr>",
      { desc = "[OIL] Project root: open file viewer in the root of the project (CWD)" } },
  },
  -- Lazy loading not recommended
  lazy = false,
}
