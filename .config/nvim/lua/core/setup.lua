vim.cmd[[set nowrap]]
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = '#FFFFFF' })
vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true
vim.o.number = true
vim.opt.relativenumber = true
vim.cmd[[highlight LineNr ctermfg=white guifg=black]]
vim.cmd[[highlight CursorLine guibg=#ffcc00 ctermbg=darkgrey]]

-- remove tilde buffer
vim.opt.fillchars = {eob = " "}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


