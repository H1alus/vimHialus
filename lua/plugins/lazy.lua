-- imports 
local cmp = require("plugins.cmp")
local barbar = require("plugins.barbar")
local treesitter = require("plugins.treesitter")
local telescope = require("plugins.telescope")
local mason = require("plugins.mason")
local go_nvim = require("plugins.go")
local lualine = require("plugins.lualine")
local nvim_tree = require("plugins.nvim_tree")
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
			barbar,
			cmp,
			nvim_tree,
			treesitter,
			--"ms-jpq/chadtree",
			mason,
			go_nvim,
			telescope,	
			lualine,
			"navarasu/onedark.nvim",
		})
	end
end
return lazy
