-- https://github.com/rose-pine/neovim
-- Rose pine is a beautiful theme
return {
  "rose-pine/neovim",
  -- Use high priority to load before other plugins
  priority = 9001,
  lazy = false,
  config = function()
    require("rose-pine").setup({

    })
    -- Enable the theme
    vim.cmd.colorscheme("rose-pine-moon")
  end,
}
