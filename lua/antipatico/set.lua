-- Define the leader as space
vim.g.mapleader = " "
-- Always use fat cursor
vim.opt.guicursor = ""
-- Show line numbers
vim.opt.nu = true
-- Show relative line numbers
vim.opt.relativenumber = true
-- Default tab config using
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- Use spaces instead of tab chars
vim.opt.expandtab = true
-- Enable indenting
vim.opt.smartindent = true
-- Disable line wrapping
vim.opt.wrap = false
-- Disable swap files and backup files
vim.swapfile = false
vim.backup = false
-- Enable undodir for huge undofile
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.undofile = true
-- Enable pretty colors
vim.opt.termguicolors = true
-- Have 8 lines up and down the cursor (if not at the end or start of the file)
vim.opt.scrolloff = 8
-- Fast update time
vim.opt.updatetime = 50
-- Show the color column
vim.opt.colorcolumn = "80"
