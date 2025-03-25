return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = (function()
    local builtin = require("telescope.builtin")
    return {
      { "<leader>pf", builtin.find_files, desc = "Find Project Files" },
      { "<C-p>", builtin.git_files, desc = "Find Git Files" },
      { "<leader>ps", function() 
          builtin.grep_string({ search = vim.fn.input("Grep > ") }) 
        end, desc = "Search in Project" 
      },
      { "<leader>pws", function() 
          builtin.grep_string({ search = vim.fn.expand('<cword>') }) 
        end, desc = "Search Word at Cursor" 
      },
      { "<leader>pWs", function() 
          builtin.grep_string({ search = vim.fn.expand('<cWORD>') }) 
        end, desc = "Search Big Word at Cursor" 
      },
      { "<leader>vh", builtin.help_tags, desc = "Search Vim Help" }
    }
  end)()
}
