-- AUTOCMDs

-- Remove kitty margin when neovim is opened
vim.cmd([[
    augroup kittyconform
        autocmd VimEnter * silent !kitty @ set-spacing margin=0
        autocmd VimLeave * silent !kitty @ set-spacing margin=default
    augroup END
]])

-- Hide cursor when nvim-tree buf is focused
vim.api.nvim_create_autocmd({ 'WinEnter', 'BufWinEnter' }, {
  pattern = 'NvimTree*',
  callback = function()
    local def = vim.api.nvim_get_hl_by_name('Cursor', true)
    vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 100 }))
    vim.opt.guicursor:append('a:Cursor/lCursor')
  end,
})

vim.api.nvim_create_autocmd({ 'BufLeave', 'WinClosed' }, {
  pattern = 'NvimTree*',
  callback = function()
    local def = vim.api.nvim_get_hl_by_name('Cursor', true)
    vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 0 }))
    vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'
  end,
})
