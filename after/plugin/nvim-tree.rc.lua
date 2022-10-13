local status, tree = pcall(require, 'nvim-tree')

if(not status) then return end

tree.setup({
  auto_close = true,
  diagnostics = {
    enable = true
  }
})
