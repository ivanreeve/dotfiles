-- add silent = true option to suppress stdout messages

vim.keymap.set("n", "<Leader>n", ":set number!<CR>")
vim.keymap.set("n", "<Leader>m", ":set relativenumber!<CR>")
vim.keymap.set("n", "<Leader>w", ":set wrap!<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>ft", ":TodoTelescope<CR>")

-- NvimTree
vim.keymap.set("n", "<Leader>o", ":NvimTreeToggle<CR>")

-- Colorizer
vim.keymap.set("n", "<Leader>c", ":ColorizerToggle<CR>")

-- Symbols Outline
vim.keymap.set("n", "<Leader>s", ":SymbolsOutline<CR>")

-- Tabs and Buffers
vim.keymap.set("n", "<Leader>t", ":tabnew<CR>")
vim.keymap.set("n", "<Leader>x", ":close<CR>")
vim.keymap.set("n", "<Leader>d", ":bd!<CR>")

-- Split View
vim.keymap.set("n", "<Leader>;", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>.", ":split<CR>")
vim.keymap.set("n", "<Leader><Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<Leader><Right>", ":wincmd l<CR>")
vim.keymap.set("n", "<Leader><Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<Leader><Down>", ":wincmd j<CR>")
