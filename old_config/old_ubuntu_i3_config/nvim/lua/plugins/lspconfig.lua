return {
  -- Configuração manual para Python (Pyright)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },

  { import = "lazyvim.plugins.extras.lang.typescript" },

  { import = "lazyvim.plugins.extras.lang.json" },

  -- ATIVANDO O SUPORTE A VUE
  -- O LazyVim usa o "Volar" por padrão.
  -- O Volar suporta Vue 2, mas se o seu projeto for muito antigo (< 2.7),
  -- certifique-se de ter o pacote "vue-tsc" instalado no package.json do projeto.
  { import = "lazyvim.plugins.extras.lang.vue" },
}
