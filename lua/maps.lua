local map = vim.keymap

local builtin = require('telescope.builtin')

map.set('n', '<C-p>', builtin.find_files, {})
map.set('n', '<C-f>', builtin.live_grep, {})
map.set('n', '<C-h>', builtin.help_tags, {})
