-- plugins.lua

-- Specify the additional plugins you want to install
lvim.plugins = {
  -- additional theme
  { "catppuccin/nvim",          name = "catppuccin" },
  -- trouble
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- useful for dap, dap-ui, rust-tools
  { "nvim-lua/plenary.nvim" },
  { "j-hui/fidget.nvim" },

  -- Git
  { "kdheepak/lazygit.nvim" },

  -- ruby on rails
  { "tpope/vim-rails" },
  { "tpope/vim-surround" },

  -- typescript
  { "MunifTanjim/prettier.nvim" },
  { "windwp/nvim-ts-autotag" },
  { "windwp/nvim-autopairs" },

  -- rust
  { 'simrat39/rust-tools.nvim' },
}
