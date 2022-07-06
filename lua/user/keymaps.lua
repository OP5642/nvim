local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

--Compile Latex
keymap("n", "<C-s>", ":!pdflatex %<CR>", opts)

--Latex bindings
keymap("n", ";c", "i<Tab>\\begin{center}<Enter><Enter>\\end{center}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";t", "i<Tab>\\begin{te}<Enter><Enter>\\end{te}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";p", "i<Tab>\\begin{proof}<Enter><Enter>\\end{proof}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";a", "i<Tab>\\begin{align*}<Enter><Enter>\\end{align*}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";d", "i<Tab>\\begin{de}<Enter><Enter>\\end{de}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";o", "i<Tab>\\begin{posl}<Enter><Enter>\\end{posl}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";l", "i<Tab>\\begin{lem}<Enter><Enter>\\end{lem}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";v", "i<Tab>\\begin{tvr}<Enter><Enter>\\end{tvr}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";z", "i<Tab>\\begin{za}<Enter><Enter>\\end{za}<Esc>ki<Tab><Tab>", opts)
keymap("n", ";r", "i<Tab>\\begin{pr}<Enter><Enter>\\end{pr}<Esc>ki<Tab><Tab>", opts)

-- NvimTree
keymap("n", "e", ":NvimTreeToggle<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-x>", ":bdelete<CR>", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("v", "<S-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
