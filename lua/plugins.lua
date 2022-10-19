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
  use 'lewis6991/gitsigns.nvim'
end)
