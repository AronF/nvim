local theme = require("themeopts")

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

--enter in normal mode for new blank lines
vim.keymap.set({'n'}, '<CR>', 'o<ESC>')
vim.keymap.set({'n'}, '<S-CR>', 'O<ESC>')

--lightmode and darkmode toggle
vim.api.nvim_create_user_command('BGToggle',function ()
	if (vim.o.background == "dark") then
		vim.o.background = "light"
		require("lualine").setup(theme["light"])
	else
		vim.o.background = "dark"
		require("lualine").setup(theme["dark"])
	end
	--need to redraw the screen for everything to display properly
	vim.cmd.mode()
end, {})

--shortcut for telescope grep
vim.api.nvim_create_user_command('LG', 'Telescope live_grep', {})
