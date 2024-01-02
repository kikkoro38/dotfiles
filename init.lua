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

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<S-h>', '^', { noremap = true })
vim.keymap.set('n', '<S-l>', '$', { noremap = true })

vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>')

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
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme tokyonight]])
      end
    },
    {
      "tpope/vim-fugitive"
    },
    {
      "airblade/vim-gitgutter"
    },
    {
      "lambdalisue/fern.vim",
      keys = { 
        { "<C-e>", ":Fern . -drawer -toggle -reveal=% <CR>", silent = true }
      },
      dependencies = {
        {
          "lambdalisue/nerdfont.vim"
        },
        {
          "lambdalisue/fern-renderer-nerdfont.vim",
          config = function()
            vim.g['fern#renderer'] = 'nerdfont'
          end
        },
        {
          'lambdalisue/fern-git-status.vim'
        }
      },
    },
    {
      'vim-airline/vim-airline'
    },
    {
      'vim-airline/vim-airline-themes'
    },
    {
      'lambdalisue/battery.vim'
    },
    {
      'tpope/vim-rails'
    },
    {
      'tpope/vim-endwise'
    },
    {
      'ngmy/vim-rubocop'
    },
    {
      'dense-analysis/ale',
      config = function()
        vim.g['ale_linters'] = {
        ruby = { 'rubocop' },
        javascript = { 'eslint', 'prettier' },
        typescript = { 'tslint', 'tsserver' },
        html = {'prettier' }
        }
      end
    },
    {
      'prabirshrestha/vim-lsp'
    },
    {
      'mattn/vim-lsp-settings'
    },
    {
      'vim-denops/denops.vim'
    },
    {
      'vim-skk/skkeleton'
    },
    {
      'nvim-treesitter/nvim-treesitter'
    },
  }
)
