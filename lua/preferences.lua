-- this should only contain general vim mappings 
-- or confings opts that are not related to a specific plugin
local preferences = {}

preferences.config = function()
	-- some basic settingsvivim
	vim.opt.relativenumber = true -- relative numbers to the current line
	vim.opt.mouse = a -- for xclip
	vim.opt.tabstop = 2 -- visualized tab
	vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- set clipboard to always work alongside the system clipboard
	vim.opt.linebreak = true
	vim.opt.expandtab = false -- make sure we use tabs in our files
	vim.opt.shiftwidth = 4 --width of the tab shift operand
	vim.keymap.set('n', '<space>l', '<C-w>l') -- space-l moves to the buffer placed on the rightvim
	vim.keymap.set('n', '<space>h', '<C-w>h') -- space-h moves to the buffer placed on the left
	vim.keymap.set('n', '<space>j', '<C-w>j') -- space-j moves to the buffer placed up
	vim.keymap.set('n', '<space>k', '<C-w>k') -- space-k moves to the buffer placed down
	vim.keymap.set('n', '<space>vb', '<C-w>v') -- space-nv creates a new vertical buffer
	vim.keymap.set('n', '<space>nh', function() vim.cmd.nohlsearch() end) -- space-nh toggles search highlight
	vim.keymap.set('n', '<space>nv', ':vnew<cr>')
	-- theme setting 
	-- available themes
  vim.cmd.colorscheme("vscode")	
end
return preferences
