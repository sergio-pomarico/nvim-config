local cmd = vim.cmd
local g = vim.g
local status, tokyonight = pcall(require, 'tokyonight')

if(not status) then return end

tokyonight.setup({
  style = 'storm'
})

cmd('colorscheme tokyonight')
