-- AUTOCMDs

-- Conform formatter
vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

-- Remove kitty margin when neovim is opened
vim.cmd([[
    augroup kittyconform
        autocmd VimEnter * silent !kitty @ set-spacing margin=0
        autocmd VimLeave * silent !kitty @ set-spacing margin=default
    augroup END
]])

-- Hide cursor when nvim-tree buf is focused
-- vim.api.nvim_create_autocmd({ 'WinEnter', 'BufWinEnter' }, {
--   pattern = 'NvimTree*',
--   callback = function()
--     local def = vim.api.nvim_get_hl_by_name('Cursor', true)
--     vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 100 }))
--     vim.opt.guicursor:append('a:Cursor/lCursor')
--   end,
-- })

-- vim.api.nvim_create_autocmd({ 'BufLeave', 'WinClosed' }, {
--   pattern = 'NvimTree*',
--   callback = function()
--     local def = vim.api.nvim_get_hl_by_name('Cursor', true)
--     vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 0 }))
--     vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'
--   end,
-- })
