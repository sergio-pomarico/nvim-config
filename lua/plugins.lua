local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installing')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer pakage
  use 'folke/tokyonight.nvim'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-lualine/lualine.nvim' -- Status line
  use {
    'nvim-treesitter/nvim-treesitter', -- Syntax Highlighting
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'neovim/nvim-lspconfig' -- Nvim Language Server Protocol
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
end)
