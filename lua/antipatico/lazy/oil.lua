return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  tag = "v2.15.0",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = {
    columns = {
      "icon",
      "permissions",
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
    },
    view_options = {
      show_hidden = true,
      
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
  },
  -- Lazy loading not recommended
  lazy = false,
}
