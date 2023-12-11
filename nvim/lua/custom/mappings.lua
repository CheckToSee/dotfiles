local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<leader>gg"] = {":LazyGit<CR>", "LazyGit"},
    ["-"] = {"<cmd>Oil<CR>", "Open parent directory"}
  },
  v = {
    ["<C-j>"] = { ":m '>+1<CR>gv=gv", "move selection down" },
    ["<C-k>"] = { ":m '<-2<CR>gv=gv", "move selection up" }
  }
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function() 
        harpoon:list():append()
      end,
    },
    ["<C-e>"] = {
      function() 
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
    },
    ["<C-s>"] = {
      function() 
        harpoon:list():select(1)
      end,
    },
    ["<C-t>"] = {
      function() 
        harpoon:list():select(2)
      end,
    },
  }
}

M.disabled = {
  n = {
    ["<C-n>"] = "",
  }
}

return M
