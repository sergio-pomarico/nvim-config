local cmd = vim.cmd
local g = vim.g
local status, material = pcall(require, 'material')

if(not status) then return end

material.setup({
  contrast = {
    sidebars = true
  },
  italics = {
    comments = true,
    keywords = true
  },
  lualine_style = "default"
})

g.material_style = 'deep ocean'
cmd('colorscheme material')
