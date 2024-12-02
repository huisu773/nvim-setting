local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("telescope not found")
  return
end

local map = vim.keymap.set
local telescope_api = require('telescope.actions')

telescope.setup({
  defaults = {
    initial_mode = "insert",
  },
  pickers = {
    find_files = {
      -- theme： dropdown, cursor, ivy
      -- theme = "dropdown", 
    }
  },
  extensions = {
     -- extensions
  },
})

-- telescope extensions
pcall(telescope.load_extension, "env")


