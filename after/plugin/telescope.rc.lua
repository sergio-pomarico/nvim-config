local status, telescope = pcall(require, "telescope")

if (not status) then return end

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/*", "node_modules", "ios/Pods/*" },
    shortend_path = true,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
}
