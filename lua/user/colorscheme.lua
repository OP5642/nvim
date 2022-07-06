vim.cmd [[
try
	colorscheme pywal 
catch /^Vim\%((\a\+)\)\=:E185/
	colorscheme default
	set background=dark
endtry
]]

-- removes background added by colorscheme
vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
