return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Formatador de Lua
        "shellcheck", -- Linter de Shell
        "shfmt", -- Formatador de Shell
        "flake8", -- Linter de Python
        "prettier",
      },
    },
  },
}
