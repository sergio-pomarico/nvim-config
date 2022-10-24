-- Neovim API Aliases --
local set = vim.opt

-- Encoding --
set.fileencoding = 'utf-8'

-- line number
set.number = true

-- UI
set.termguicolors = true
set.title = true

-- Tabs & indents
set.autoindent = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2

-- Highlights code
set.cursorline = true
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 5
set.background = 'dark'

-- Line wrapping
set.wrap = true

-- Scrolling
set.mouse = 'a'
set.scrolloff = 10

-- Search
set.ignorecase = true
set.smartcase = true

-- Backspace
set.backspace = 'indent,eol,start'

-- Clipboard
set.clipboard:append { 'unnamedplus' }
