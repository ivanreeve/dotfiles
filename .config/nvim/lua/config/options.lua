-- OPTIONS

-- Highlight current line
vim.opt.cursorline = true

-- Wrap text
vim.opt.wrap = false

-- Show line numbers
vim.opt.number = true

-- Use terminal gui colors
vim.opt.termguicolors = true

-- Use relative line numbers
vim.opt.relativenumber = true

-- Tab Size
local TAB_SIZE = 2

-- Number of spaces a Tab character represents
vim.opt.tabstop = TAB_SIZE

-- Makes sure that pressing Tab or Backspace in insert mode behaves as expected
vim.opt.softtabstop = TAB_SIZE

-- Number of spaces for each indentation level
vim.opt.shiftwidth = TAB_SIZE

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Unnamedplus means to use the system clipboard instead of local registers
vim.opt.clipboard:append("unnamedplus")

-- Make statusline always stay on top
vim.opt.laststatus = 3

-- Automatically insert indentations for new lines
vim.opt.smartindent = true

-- Automatically insert tab to the latest indent
vim.opt.smarttab = true

-- Copy indent from the current line when starting a new line
vim.opt.autoindent = true

-- Hide EOB tilde ~ chars
vim.opt.fillchars = { eob = " " }

-- disable copilot by default
vim.g.copilot_filetypes = { ['*'] = false }
