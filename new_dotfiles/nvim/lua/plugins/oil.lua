return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          -- Esconde o .git mas mantém o restante visível
          return name == ".." or name == ".git"
        end,
      },
      float = {
        padding = 2,
        max_width = 90,
        max_height = 0,
      },
      win_options = {
        wrap = true,
        winblend = 0,
      },
      keymaps = {
        ["<C-c>"] = false, -- Desabilita o atalho padrão de fechar se preferir o 'q'
        ["q"] = "actions.close",
        ["<CR>"] = "actions.select",
        ["<C-h>"] = "actions.select_split",
        ["<C-v>"] = "actions.select_vsplit",
        ["-"] = "actions.parent", -- Sobe um nível de diretório
      },
    })

    -- Atalho para abrir o Oil (Sugestão: '-' abre o explorador no buffer atual)
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Abrir Oil (Explorador de Arquivos)" })
  end,
}
