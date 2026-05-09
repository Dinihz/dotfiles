return {
	"ibhagwan/fzf-lua",
	event = "VimEnter",
	opts = {
		"border-fused",
		fzf_opts = { ["--wrap"] = true },
		files = {
			hidden = true,
			fd_opts = "--type f --hidden --exclude .git --exclude node_modules --exclude .venv",
		},
		grep = {
			rg_opts = "--hidden --glob '!.git' --glob '!node_modules' --glob '!.venv'",
		},
		buffers = {
			sort_lastused = true,
		},
		defaults = {
			git_icons = false,
			file_icons = false,
			color_icons = false,
			formatter = "path.filename_first",
		},
	},
	config = function(_, opts)
		require("fzf-lua").setup(opts)

		local map = vim.keymap.set

		-- Search
		map("n", "<leader>sh", "<cmd>FzfLua help_tags<cr>", { desc = "[S]earch [H]elp" })
		map("n", "<leader>sk", "<cmd>FzfLua keymaps<cr>", { desc = "[S]earch [K]eymaps" })
		map("n", "<leader>sf", "<cmd>FzfLua files<cr>", { desc = "[S]earch [F]iles" })
		map("n", "<leader>ss", "<cmd>FzfLua builtin<cr>", { desc = "[S]earch [S]elect" })
		map("n", "<leader>sw", "<cmd>FzfLua grep_cword<cr>", { desc = "[S]earch current [W]ord" })
		map("n", "<leader>sg", "<cmd>FzfLua live_grep<cr>", { desc = "[S]earch by [G]rep" })
		map("n", "<leader>sd", "<cmd>FzfLua diagnostics_document<cr>", { desc = "[S]earch [D]iagnostics" })
		map("n", "<leader>sr", "<cmd>FzfLua resume<cr>", { desc = "[S]earch [R]esume" })
		map("n", "<leader>s.", "<cmd>FzfLua oldfiles<cr>", { desc = "[S]earch Recent Files" })
		map("n", "<leader><leader>", "<cmd>FzfLua buffers<cr>", { desc = "Find existing buffers" })

		-- Current buffer fuzzy search (dropdown-like, no preview)
		map("n", "<leader>/", function()
			require("fzf-lua").lgrep_curbuf({
				winopts = { preview = { hidden = true } },
			})
		end, { desc = "[/] Search in current buffer" })

		-- Grep in open files
		map("n", "<leader>s/", function()
			require("fzf-lua").live_grep({
				grep_open_files = true,
				prompt = "Live Grep in Open Files> ",
			})
		end, { desc = "[S]earch [/] in Open Files" })
	end,
}
