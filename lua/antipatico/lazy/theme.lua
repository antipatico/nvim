-- https://github.com/rose-pine/neovim
-- Rose pine is a beautiful theme
return {
  "rose-pine/neovim",
  config = function()
    require("rose-pine").setup({

    })
    -- Enable the theme
    vim.cmd.colorscheme("rose-pine-moon")
  end,
}
