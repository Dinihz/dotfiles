return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	-- O SEGREDO 1: Só carrega o Treesitter quando você abrir um arquivo.
	-- Isso dá tempo para o Lazy.nvim baixar o plugin em paz no background.
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		-- O SEGREDO 2: pcall (Protected Call). 
		-- Se o módulo não existir, ele falha silenciosamente em vez de explodir a tela vermelha.
		local status_ok, configs = pcall(require, "nvim-treesitter.configs")
		if not status_ok then
			return
		end

		configs.setup({
			ensure_installed = {
				"lua", "python", "javascript", "typescript", "vue", "vimdoc", "vim",
				"regex", "sql", "dockerfile", "toml", "json", "java", "gitignore",
				"graphql", "yaml", "make", "cmake", "markdown", "markdown_inline",
				"bash", "tsx", "css", "html",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = "<c-s>",
					node_decremental = "<M-space>",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = { ["]m"] = "@function.outer", ["]]"] = "@class.outer" },
					goto_next_end = { ["]M"] = "@function.outer", ["]["] = "@class.outer" },
					goto_previous_start = { ["[m"] = "@function.outer", ["[["] = "@class.outer" },
					goto_previous_end = { ["[M"] = "@function.outer", ["[]"] = "@class.outer" },
				},
				swap = {
					enable = true,
					swap_next = { ["<leader>a"] = "@parameter.inner" },
					swap_previous = { ["<leader>A"] = "@parameter.inner" },
				},
			},
		})
	end,
}
