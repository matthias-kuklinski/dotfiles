return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "L3MON4D3/LuaSnip"
  use "onsails/lspkind-nvim"
  use "projekt0n/github-nvim-theme"
  use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
  }
  use {
      "nvim-telescope/telescope.nvim", tag = "0.1.0",
      requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
end)
