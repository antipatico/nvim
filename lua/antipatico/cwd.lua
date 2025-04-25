-- This script will set the CWD on startup
-- If oil plugin is loaded it uses oil, otherwise fallsback to neovim args.file
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function(args)
    local ok, oil = pcall(require, "oil")
    local path = nil
    if ok then
      path = oil.get_current_dir()
    end
    if args.file ~= "" then -- vim.fn.filereadable(args.file) == 1 then
      path = vim.fn.fnameescape(vim.fn.fnamemodify(args.file, ":h"))
    end
    if path ~= nil then
      vim.cmd("cd "..path)
      -- Also set the title
      vim.opt.title = true
      vim.opt.titlestring = "📝 "..vim.fs.basename(vim.fn.getcwd())
    end
  end
})
