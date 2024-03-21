vim.g.mapleader = " "

-- set up line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs and spaces settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false -- disable word wrap
vim.opt.termguicolors = true

vim.keymap.set('n', '<leader>pe', vim.cmd.Ex, {})

-- search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- set a scroll offset
vim.opt.scrolloff = 8

vim.opt.updatetime = 50
