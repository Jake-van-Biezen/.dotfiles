-- Additional Plugins
lvim.plugins = {
	"gpanders/editorconfig.nvim",
	"sainnhe/gruvbox-material",
	{ "bluz71/vim-moonfly-colors", name = "moonfly" },
	{ "bluz71/vim-nightfly-colors", name = "nightfly" },
	"fatih/vim-go",
	"olexsmir/gopher.nvim",
	"j-hui/fidget.nvim",
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	},
	"lvimuser/lsp-inlayhints.nvim",
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},
	"jose-elias-alvarez/typescript.nvim",
	{
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({})
		end,
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	"mxsdev/nvim-dap-vscode-js",
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	"simrat39/rust-tools.nvim",
	{
		"saecki/crates.nvim",
		version = "v0.3.0",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
				popup = {
					border = "rounded",
				},
			})
		end,
	},
	-- {
	--   "zbirenbaum/copilot.lua",
	--   -- event = { "VimEnter" },
	--   config = function()
	--     -- vim.defer_fn(function()
	--     require("copilot").setup {
	--       -- plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
	--       suggestion = {
	--         auto_trigger = true,
	--         keymap = {
	--           accept = "<C-a>",
	--         },
	--       },
	--     }
	--     -- end, 100)
	--   end,
	-- },
	-- {
	--   "zbirenbaum/copilot-cmp",
	--   after = { "copilot.lua" },
	--   config = function()
	--     require("copilot_cmp").setup {
	--       formatters = {
	--         insert_text = require("copilot_cmp.format").remove_existing,
	--       },
	--     }
	--   end,
	-- },
}
