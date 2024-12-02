-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- set local function
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- cancel "s" function
map("n", "s", "", opt)
-- split windows
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- close current
map("n", "sc", "<C-W>c", opt)
-- close other
map("n", "so", "<C-w>o", opt)
-- jump using hjkl
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- set left-right ratio control
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- set up-down ratio control
map("n", "sk", ":resize -10<CR>", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
-- equal ratio
map("n", "s=", "<C-w>=", opt)
-- terminal related
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
-- visual mode move code
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- select text
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- scroll using ctrl+j/k
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("n", "<C-d>", "10j", opt)
map("n", "<C-u>", "10k", opt)
-- exit
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)
-- jump to line begin/end
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

