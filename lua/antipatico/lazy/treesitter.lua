-- https://github.com/nvim-treesitter/nvim-treesitter
-- As far as I understand, treesitter builds an AST from your code and allows
-- other plugins to syntax highlight and work better.
--
-- https://github.com/nvim-treesitter/nvim-treesitter-context
-- This plugins show you context of the function you are currently in, cool!
return {
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    build = ":TSUpdate",
    config = (function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        -- A list of parser names, or "all" (the listed parsers MUST always be
        -- installed)
        ensure_installed = {
          "vimdoc", "lua", "python", "bash", "c", "ini", "toml", "yaml", "java",
          "asm", "html", "javascript", "typescript", "powershell", "latex",
          "markdown", "markdown_inline" },
          -- Install parsers synchronously (only applied to `ensure_installed`)
          sync_install = false,
          -- Automatically install missing parsers when entering buffer
          -- Recommendation: set to false if you don't have `tree-sitter` CLI
          -- installed locally
          auto_install = true,
          -- List of parsers to ignore installing (or "all")
          ignore_install = { },
          highlight = {
            enable = true,
            -- NOTE: these are the names of the parsers and not the filetype. (for
            -- example if you want to disable highlighting for the `tex` filetype,
            -- you need to include `latex` in this list as this is the name of the
            -- parser)
            -- lLst of language that will be disabled
            -- disable = { },
            -- Or use a function for more flexibility
            -- e.g. to disable slow treesitter highlight for large files
            disable = (function(lang, buf)
              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then
                return true
              end
            end),

            -- Setting this to true will run `:h syntax` and tree-sitter at the
            -- same time. Set this to `true` if you depend on "syntax" being
            -- enabled (like for indentation). Using this option may slow down your
            -- editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
          }
        })
      end)
    },

    {
      "nvim-treesitter/nvim-treesitter-context",
      opts = {
        -- Enable this plugin (Can be enabled/disabled later via commands)
        enable = true, 
        -- Enable multiwindow support.
        multiwindow = false,
        -- How many lines the window should span. Values <= 0 mean no limit.
        max_lines = 0,
        -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        min_window_height = 0,
        line_numbers = true,
        -- Maximum number of lines to show for a single context
        multiline_threshold = 10,
        -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        trim_scope = 'outer',
        -- Line used to calculate context. Choices: 'cursor', 'topline'
        mode = 'cursor',  
        -- Separator between context and content. Should be a single character
        -- string, like '-'. When separator is set, the context will only show up
        -- when there are at least 2 lines above cursorline.
        separator = nil,
        -- The Z-index of the context window
        zindex = 20, 
        -- (fun(buf: integer): boolean) return false to disable attaching
        on_attach = nil, 
      }
    }
  }
