-- plugins.lua

-- Specify the additional plugins you want to install
lvim.plugins = {
  -- additional theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
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
    'stevearc/dressing.nvim',
    event = "VeryLazy",
    opts = {},
  },

  -- useful for dap, dap-ui, rust-tools
  { "nvim-lua/plenary.nvim" },
  { "j-hui/fidget.nvim" },

  -- Git
  { "kdheepak/lazygit.nvim" },

  -- ruby on rails
  { "tpope/vim-rails" },
  { "tpope/vim-surround" },
  { "suketa/nvim-dap-ruby" }, -- debugger support using nvim-dap

  -- typescript
  { "MunifTanjim/prettier.nvim" },
  { "windwp/nvim-ts-autotag" },
  { "windwp/nvim-autopairs" },

  -- rust
  { "simrat39/rust-tools.nvim" },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      }
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
}
