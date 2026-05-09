return {
  { import = "lazyvim.plugins.extras.lang.typescript" },

  { import = "lazyvim.plugins.extras.lang.json" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },

  {
    -- autoclose tags
    "windwp/nvim-ts-autotag",
  },

  {
    -- detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",
  },

  {
    -- Powerful Git integration for Vim
    "tpope/vim-fugitive",
  },
  {
    -- GitHub integration for vim-fugitive
    "tpope/vim-rhubarb",
  },

  {
    -- Autoclose parentheses, brackets, quotes, etc.
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {},
  },

  {
    -- Highlight todo, notes, etc in comments
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  {
    -- high-performance color highlighter
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        -- Altera a visualização de 'cmdline_popup' (centro) para 'cmdline' (embaixo)
        view = "cmdline",
      },
    },
  },
}
