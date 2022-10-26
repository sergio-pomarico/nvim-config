local map = vim.keymap

local builtin = require('telescope.builtin')

-- Telescope
map.set('n', '<C-p>', builtin.find_files, {})
map.set('n', '<C-f>', builtin.live_grep, {})
map.set('n', '<C-h>', builtin.help_tags, {})

-- Bufferline
map.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
map.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

--NvimTree
map.set('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>', {})
