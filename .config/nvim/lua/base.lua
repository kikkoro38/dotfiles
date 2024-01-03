-- encoding
vim.o.encoding = 'utf-8'
vim.bo.fileencoding = 'utf-8'

-- appearance
vim.o.autoread = true
-- vim.o.hidden = true -- default true
-- vim.o.backup = false -- default true
vim.bo.swapfile = false
vim.o.showcmd = true
vim.o.mouse = 'a'
vim.o.maxmempattern = 4096
vim.o.undodir = '~/tmp/vim/undo'

-- visual
vim.bo.syntax = 'ON'
vim.wo.number = true
vim.o.virtualedit = 'onemore'
vim.bo.smartindent = true
vim.o.showmatch = true
vim.o.wildmode = 'list:longest'
vim.wo.list = true
vim.o.listchars = 'eol:↲,tab:▸-,trail:_'

-- tab
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.wrapscap = true
vim.o.hlsearch = true
