-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- keep 8 lines when use jkhl to move
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- use relative line number
vim.wo.number = true
-- vim.wo.relativenumber = true
-- highlight current line
vim.wo.cursorline = true
-- left gray column
vim.wo.signcolumn = "yes"
-- right red reference column
vim.wo.colorcolumn = "80"
-- space to tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 2
vim.o.shiftround = true
-- >> << shift length
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- replace tab with space
vim.o.expandtab = true
vim.bo.expandtab = true
-- new line aligned
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- search case insensitive, unless cap
vim.o.ignorecase = true
vim.o.smartcase = true
-- search no highlight
vim.o.hlsearch = false
-- search when input
vim.o.incsearch = true
-- cmd line height: 2
vim.o.cmdheight = 2
-- auto reload file when changed
vim.o.autoread = true
vim.bo.autoread = true
-- forbid wrap
vim.wo.wrap = false
-- jump to next line in beginning or end
vim.o.whichwrap = '<,>,[,]'
-- hide changed buffer
vim.o.hidden = true
-- mouse support
vim.o.mouse = "a"
-- forbid creating backup
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller update time
vim.o.updatetime = 300
-- keyboard shortcuts hit time
vim.o.timeoutlen = 500
-- split window from below or right
vim.o.splitbelow = true
vim.o.splitright = true
-- auto complete setting
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- style 
vim.o.background = "dark"
--vim.o.termguicolors = true
--vim.opt.termguicolors = true
-- show invisible char as dot
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- improved complete
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
-- max 10 lines in complete
vim.o.pumheight = 10
-- show tabline
vim.o.showtabline = 2
-- turn off vim mode show
vim.o.showmode = false
-- clipboard
vim.opt.clipboard:append("unnamedplus")
