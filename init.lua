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
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.wrapscap = true
vim.o.hlsearch = true

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<S-h>', '^', { noremap = true })
vim.keymap.set('n', '<S-l>', '$', { noremap = true })

vim.keymap.set('v', '<C-p>', '"0p', { noremap = true, silent = true })

vim.keymap.set('n', '[TABCMD]', '<nop>', { noremap = true })
vim.keymap.set('n', '<leader>t', '[TABCMD]')
vim.keymap.set('n', '[TABCMD]f', ':<c-u>tabfirst<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]l', ':<c-u>tablast<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]n', ':<c-u>tabnext<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]N', ':<c-u>tabNext<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]p', ':<c-u>tabprevious<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]e', ':<c-u>tabedit<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]c', ':<c-u>tabclose<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]o', ':<c-u>tabonly<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]s', ':<c-u>tabs<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[TABCMD]f', ':<c-u>tabfirst<cr>', { noremap = true })
