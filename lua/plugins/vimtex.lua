return {
  "lervag/vimtex",
  lazy = false,
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
  vim.g.vimtex_view_method = "zathura"
	vim.g.vimtex_compiler_method = 'latexmk'
	vim.g.vimtex_quickfix_mode=0
  vim.conceallevel=1
	vim.g.tex_conceal='abdmg'

  end
}
