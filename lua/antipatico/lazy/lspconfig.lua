-- https://github.com/neovim/nvim-lspconfig
-- 
-- Language Server Protocol is a standard allowing IDEs (clients) and
-- language servers to communicate and exchange information. This information
-- allows turning a simple editor into an IDE. Thus, providing auto completion
-- (omnicomplete), error highlighting, formatting, linting and probably more.
--
-- Neovim has Language Server Protocol (as a client). This plugin DOES NOT 
-- implement the LSP protocol, but it provides sensible configurations for the
-- various LSP servers.
--
-- In most configuration, LSP servers are installed through Mason.
-- Unfortunately, Mason does not work (well) in NixOS, since it downloads and
-- runs dynamically linked executables. In my setup, I install the LSP servers
-- through nix.
--
return {
  "neovim/nvim-lspconfig",
  tag = "v1.8.0",
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.clangd.setup({})
    lspconfig.basedpyright.setup({})
    lspconfig.gopls.setup({})
  end,
}
