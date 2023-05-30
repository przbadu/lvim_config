-- plugins.lua

-- Specify the additional plugins you want to install
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- theme
  { "catppuccin/nvim" },

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
