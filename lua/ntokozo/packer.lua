-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
    }
use({ 'rose-pine/neovim', as = 'rose-pine', config = function()
	vim.cmd('colorscheme rose-pine')
	end
})
use { "ellisonleao/gruvbox.nvim" }
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')

use ('mbbill/undotree')
use ('tpope/vim-fugitive')
use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    {'mason-org/mason.nvim'},
    {'mason-org/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use {
    "mason-org/mason.nvim"
}


use 'mfussenegger/nvim-jdtls'
end)
