local status, packer = pcall(require, 'packer')

if(not status) then 
  print('Packer is not installing')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use) 
  use 'wbthomason/packer.nvim' -- Packer pakage
  use 'marko-cerovac/material.nvim' -- Material Color Theme
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-tree/nvim-tree.lua' -- File Explorer
end)

