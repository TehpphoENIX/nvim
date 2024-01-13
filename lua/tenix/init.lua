require("tenix.remap")
require("tenix.preferences")

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
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
    	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    	{ 'rose-pine/neovim', name = 'rose-pine' },
	{ 'ThePrimeagen/vim-be-good' },
})
