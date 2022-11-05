local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installing')
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer pakage
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
  use 'folke/tokyonight.nvim' -- Color scheme
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-lualine/lualine.nvim' -- Status line
  use {
    'nvim-treesitter/nvim-treesitter', -- Syntax Highlighting
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- autocompletion
  use 'hrsh7th/nvim-cmp' --completion plugin
  use 'hrsh7th/cmp-buffer' --source for text in buffer
  use 'hrsh7th/cmp-path' -- source for file system paths

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- language server protocol
  use 'neovim/nvim-lspconfig' -- Nvim Language Server Protocol
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-telescope/telescope.nvim' -- File fuzzy finder
  use 'akinsho/nvim-bufferline.lua' -- Tabs
  use 'nvim-tree/nvim-tree.lua' -- File explore
  use 'lewis6991/gitsigns.nvim'
  if (packer_bootstrap) then
    require('packer').sync()
  end
end)
