-- plugins.lua

-- Specify the additional plugins you want to install
lvim.plugins = {
	-- additional theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},

  -- Tagbar
  { "preservim/tagbar" },

	-- github copilot
	{ "github/copilot.vim" },

	-- Global find and replace on current file
	-- <leader>S, <leader>sw, <leader>sp
	{ "nvim-pack/nvim-spectre" },

	-- TODO: examples
	-- PREF: performance comment
	-- HACK: monkey patch
	-- NOTE: notes
	-- FIX: this needs fixing
	-- WARNING: this is a warning
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			signs = true,
		},
	},

	-- Vim tmux
	{ "christoomey/vim-tmux-navigator" },
	-- trouble
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	-- improve default vim.ui interface. Try renaming file from nvim-tree for example
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {
			input = {
				enabled = true,
				prompt = "❯ ",
				prefix = "❯ ",
				suffix = " ",
			},
		},
	},

	-- useful for dap, dap-ui, rust-tools
	{ "nvim-lua/plenary.nvim" },
	{ "j-hui/fidget.nvim" },

	-- Git
	{ "kdheepak/lazygit.nvim" },
	{
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup({
				--Note how the `gitblame_` prefix is omitted in `setup`
				enabled = false,
			})
		end,
	},

	-- ruby on rails
	{ "tpope/vim-rails" },
	{ "tpope/vim-surround" },
	{ "suketa/nvim-dap-ruby" }, -- debugger support using nvim-dap

	-- typescript
	{ "MunifTanjim/prettier.nvim" },

	-- rust
	{ "simrat39/rust-tools.nvim" },
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
	{
		"j-hui/fidget.nvim",
    branch = 'legacy',
		event = "LspAttach",
		opts = {
			-- options
		},
	},
}
