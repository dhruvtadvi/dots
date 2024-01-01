local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"karb94/neoscroll.nvim",
		config = function ()
			require('neoscroll').setup {}
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {'nvim-tree/nvim-web-devicons'},
		config = function()
			require("plugins.configs.lualine")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = {"nvim-tree/nvim-web-devicons"},
	},
})

require("bufferline").setup{}
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})

vim.cmd[[set nowrap]]
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = '#FFFFFF' })
-- vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#FFFFFF' })

vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true
vim.o.number = true
vim.cmd[[highlight LineNr ctermfg=white guifg=black]]
vim.cmd[[highlight CursorLine guibg=#ffcc00 ctermbg=darkgrey]]
-- line number 
-- Enable line numbers
-- vim.api.nvim_exec("set number", true)

-- Customize the appearance of line numbers
-- vim.api.nvim_exec("highlight LineNr cterm=bold ctermfg=grey ctermbg=none", true)
-- vim.api.nvim_exec("highlight CursorLineNr cterm=bold ctermfg=white ctermbg=none", true)

-- Highlight the current line without affecting line numbers
-- vim.api.nvim_exec("highlight CursorLine ctermbg=NONE guibg=NONE", true)

-- remove tilde buffer
vim.opt.fillchars = {eob = " "}
