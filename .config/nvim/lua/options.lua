-- DEFAULT OPTION OVERRIDES

-- show mode text under statusline
vim.opt.showmode = false

-- highlight current line
vim.opt.cursorline = true

-- wrap text
vim.opt.wrap = false

-- show line numbers
vim.opt.number = true

-- use relative line numbers
vim.opt.relativenumber = true

-- number of spaces a Tab character represents
vim.opt.tabstop = 4

-- makes sure that pressing Tab or Backspace in insert mode behaves as expected
vim.opt.softtabstop = 4

-- number of spaces for each indentation level
vim.opt.shiftwidth = 4

-- convert tabs to spaces
vim.opt.expandtab = true

-- unnamedplus means to use the system clipboard instead of registers
vim.opt.clipboard:append("unnamedplus")

-- STARTUP COMMANDS

-- default path to use at startup
vim.cmd("cd ~/Downloads")

-- remove kitty margin when neovim is opened
vim.cmd([[
    augroup kittyconform
        autocmd VimEnter * silent !kitty @ set-spacing margin=0
        autocmd VimLeave * silent !kitty @ set-spacing margin=default
    augroup END
]])
