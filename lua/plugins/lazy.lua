-- imports 
local cmp = require("plugins.cmp")
local barbar = require("plugins.barbar")
local treesitter = require("plugins.treesitter")
local telescope = require("plugins.telescope")
local mason = require("plugins.mason")
--local go_nvim = require("plugins.go")
local lualine = require("plugins.lualine")
local nvim_tree = require("plugins.nvim_tree")
local vimtex = require("plugins.vimtex")
local luxvim = require("plugins.luxvim") -- terminal

local lazy = {}

lazy.config = function()
	-- configuring lazyvim (auto install if not found)
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
	else
		vim.opt.rtp:prepend(lazypath)
		-- import lazyvim
		require("lazy").setup({
			'Mofiqul/vscode.nvim',
			barbar,
			cmp,
			nvim_tree,
			treesitter,
			luxvim,
			----"ms-jpq/chadtree",
			--go_nvim,
			mason,
			telescope,
			lualine,
			vimtex,
		})
	end
	-- mason and its extensions don't work with lazy auto-setup
	mason.config()
end
return lazy
