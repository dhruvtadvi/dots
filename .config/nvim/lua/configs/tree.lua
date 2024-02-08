-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
 hijack_cursor = false,
    renderer = {
	symlink_destination = true,
	icons = {
	    show = {
	        git = true,
	    },
	    glyphs = {
		git = {
		    unstaged = "✗",
		    staged = "✓",
		    unmerged = "",
		    renamed = "➜",
		    untracked = "★",
		    deleted = "",
		    ignored = "◌",
		},
	    },
	},
    },
  view = { width = 25 }
})

