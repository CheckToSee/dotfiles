local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    opts = {
      highlight = { enable = true },
      autopairs = { enable = true },
      autotag = {
        enable = true, 
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {
          "html",
          "htmldjango",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "tsx",
          "jsx",
          "rust"
        },
      },
      indent = { enable = true },
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "htmldjango",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "python",
        "rust",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua"
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
  },
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    -- Optional dependencies
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    'ThePrimeagen/harpoon',
    lazy = false,
    branch = 'harpoon2',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
return plugins
