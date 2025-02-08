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
	{ 'nvim-lua/plenary.nvim' },
	{ 'theprimeagen/harpoon' },
	{ 'mbbill/undotree' },
	{ 'tpope/vim-fugitive' },

	--- Uncomment the two plugins below if you want to manage the language servers from neovim
	--- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
    {'lambdalisue/suda.vim'},
    {'lyokha/vim-xkbswitch'},
    {'github/copilot.vim'},
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}},
    { "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"}, event = "VeryLazy" },
    { "jay-babu/mason-nvim-dap.nvim", requires = { "williamboman/mason.nvim", "mfussenegger/nvim-dap"}},
    { 'Civitasv/cmake-tools.nvim', requires = { 'Civitasv/cmake-tools.nvim' }}
})
