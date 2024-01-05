vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.number = true
-- vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'

vim.opt.fillchars = {eob = ' '}

--remapping indenting to easier keys
vim.keymap.set({ 'v', 'n' }, '<Tab>', '>')
vim.keymap.set({ 'v', 'n' }, '<S-Tab>', '<')

--
vim.keymap.set({'n'}, '<CR>', 'o<ESC>')
vim.keymap.set({'n'}, '<S-CR>', 'O<ESC>')
