local status, lualine = pcall(require, 'lualine')

if(not status) then return end

lualine.setup({
  lualine_style = 'stealth',
  options = {
    icons_enabled = true,
    theme = 'tokyonight'
  },
})
