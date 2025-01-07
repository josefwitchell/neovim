-- modernisation
vim.g.have_nerd_font = true
vim.opt.mouse = 'a'
vim.opt.termguicolors = true -- 24-bit colour mode

-- navigation
-- vim.opt.autochdir = true

-- scroll
vim.opt.scrolloff = 10

-- splits
vim.o.splitright = true

-- highlights
vim.opt.cursorline = true

-- gutters
vim.opt.signcolumn = 'yes'
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop = 4 -- 4 spaces for tabs
vim.opt.shiftwidth = 4 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting a new one

-- search
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- case-sensitive search if using mixed-case

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard
