local g = vim.g
local status, nvimtree = pcall(require, "nvim-tree")


if (not status) then return end

g.loaded = 1
g.loaded_netrwPlugin = 1

nvimtree.setup({
  filters = { custom = { "^.git$" } },
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      }
    },
  }
})
