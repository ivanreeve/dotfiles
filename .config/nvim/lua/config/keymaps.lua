-- KEYMAPS

-- Add silent = true option to suppress stdout messages
vim.keymap.set("n", "<Leader>n", "<cmd>set number!<CR>")
vim.keymap.set("n", "<Leader>m", "<cmd>set relativenumber!<CR>")
vim.keymap.set("n", "<Leader>w", "<cmd>set wrap!<CR>")

vim.keymap.set({ "n", "i" }, "<C-b>", "<C-b>", { noremap = true })

-- Search and replace
vim.keymap.set("n", "<Leader>nhs", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<Leader>r", ":%s/")

-- Restart LSP
vim.keymap.set("n", "<Leader>lr", "<cmd>LspRestart<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fo", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<Leader>fn", "<cmd>lua require(\"telescope.builtin\").find_files({ cwd = \"~/.config/nvim/\" })<CR>")
vim.keymap.set("n", "<Leader>ft", "<cmd>TodoTelescope<CR>")

vim.keymap.set("n", "<Leader>gc", "<cmd>Telescope git_commits<CR>")
vim.keymap.set("n", "<Leader>gbc", "<cmd>Telescope git_bcommits<CR>")
vim.keymap.set("n", "<Leader>br", "<cmd>Telescope git_branches<CR>")
vim.keymap.set("n", "<Leader>gg", "<cmd>Telescope git_status<CR>")
vim.keymap.set("n", "<Leader>gs", "<cmd>Telescope git_stash<CR>")
vim.keymap.set("n", "<Leader>ts", "<cmd>Telescope treesitter<CR>")

-- Toggle Aerial
vim.keymap.set("n", "<leader>s", "<cmd>AerialToggle!<CR>")

-- NvimTree
vim.keymap.set("n", "<Leader>o", "<cmd>NvimTreeToggle<CR>")

-- Colorizer
vim.keymap.set("n", "<Leader>c", "<cmd>ColorizerToggle<CR>")

-- Tabs and buffers
vim.keymap.set("n", "<Leader>t", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<Leader>x", "<cmd>close<CR>")
vim.keymap.set("n", "<Leader>d", "<cmd>bd!<CR>")
vim.keymap.set("n", "<Leader>bn", "<cmd>bnext<CR>")
vim.keymap.set("n", "<Leader>bb", "<cmd>bprev<CR>")

-- Split view
vim.keymap.set("n", "<Leader>;", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<Leader>.", "<cmd>split<CR>")
vim.keymap.set("n", "<Leader><Left>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<Leader><Right>", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "<Leader><Up>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<Leader><Down>", "<cmd>wincmd j<CR>")

-- Change dir to the parent path of focused buffer
vim.keymap.set("n", "<Leader>cd", "<cmd>cd %:p:h<CR>")

-- Ultra folding
vim.keymap.set("n", "<Leader>zz", "<cmd> lua require(\"ufo\").openAllFolds()<CR>")
vim.keymap.set("n", "<Leader>za", "<cmd> lua require(\"ufo\").closeAllFolds()<CR>")

-- Context Menu -- is a window, <Leader>x to force close
-- mouse users + nvimtree users!
vim.keymap.set("n", "<RightMouse>", function()
    vim.cmd.exec '"normal! \\<RightMouse>"'

    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options, { mouse = true })
end, {})
