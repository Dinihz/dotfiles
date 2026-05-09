-- Standalone plugins with minimal configuration
return {
	{
		-- Autoclose and autorename HTML/Vue tags using Treesitter
		-- "windwp/nvim-ts-autotag",
		-- -- Load the plugin ONLY in filetypes where it makes sense.
		-- -- This prevents the "nil parser" error in random/empty buffers.
		-- ft = {
		-- 	"html",
		-- 	"javascript",
		-- 	"typescript",
		-- 	"javascriptreact",
		-- 	"typescriptreact",
		-- 	"vue",
		-- 	"tsx",
		-- 	"jsx",
		-- 	"xml",
		-- 	"markdown",
		-- },
		-- opts = {},
	},
	{
		-- Detect tabstop and shiftwidth automatically based on the file content
		"tpope/vim-sleuth",
	},
	{
		-- The definitive Git wrapper for Vim
		"tpope/vim-fugitive",
	},
	{
		-- GitHub extension for fugitive.vim (enables :GBrowse)
		"tpope/vim-rhubarb",
	},
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true, -- Use Treesitter to check for context
			ts_config = {
				lua = { "string" }, -- Don't add pairs in lua string nodes
				javascript = { "template_string" }, -- Don't add pairs in JS template strings
			},
		},
	},
	{
		-- Highlight and search for TODO, FIXME, NOTE, etc.
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			signs = true, -- Show icons in the sign column (gutter)
		},
	},
	{
		-- High-performance color highlighter (Hex/RGB) for CSS and Web Dev
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" }, {
				css = { rgb_fn = true }, -- Enable support for rgb() and rgba() functions
				html = { names = false }, -- Disable highlighting color names like "Blue" in HTML
			})
		end,
	},
}
