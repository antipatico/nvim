return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  tag = "v2.15.0",
  opts = {
    columns = {
      "icon",
      "permissions",
    },
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- Lazy loading not recommended
  lazy = false,
}
