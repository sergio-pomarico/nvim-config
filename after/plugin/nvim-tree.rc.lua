local g                = vim.g
local status, nvimtree = pcall(require, "nvim-tree")


if (not status) then return end

g.loaded = 1
g.loaded_netrwPlugin = 1

nvimtree.setup({
  filters = {
    dotfiles = false,
    custom = { '^.git$', 'node_modules' },
    exclude = {}
  },
  ignore_ft_on_setup = {},
  auto_reload_on_write = false,
  hijack_directories = {
    enable = true,
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 200,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = ''
    }
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {},
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
  actions = {
    use_system_clipboard = true,
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        }
      }
    },
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = " ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = '',
        symlink = '',
        git = {
          deleted = '',
          ignored = '◌',
          renamed = '➜',
          staged = 'S',
          unmerged = '',
          unstaged = '',
          untracked = 'U'
        },
        folder = {
          default = '',
          empty = '',
          empty_open = '',
          open = '',
          symlink = ''
        },
      },
    },
    group_empty = true,
    highlight_git = true,
    root_folder_modifier = ':t'
  }
})
