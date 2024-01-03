return {
  {
    {
      'folke/tokyonight.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme tokyonight]])
      end
    },
    {
      'ryanoasis/vim-devicons'
    },
    {
      'tpope/vim-fugitive'
    },
    {
      'airblade/vim-gitgutter'
    },
    {
      'lambdalisue/fern.vim',
      keys = { 
        { '<C-e>', ':Fern . -drawer -toggle -reveal=% <CR>', silent = true },
      },
      dependencies = {
        {
          'lambdalisue/nerdfont.vim'
        },
        {
          'lambdalisue/fern-renderer-nerdfont.vim',
          config = function()
            vim.g['fern#renderer'] = 'nerdfont'
          end
        },
        {
          'lambdalisue/fern-git-status.vim'
        },
      },
      config = function()
        vim.g['fern#default_hidden'] = 1
      end
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
        vim.g['ale_linters_explicit'] = 1
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
      'vim-skk/skkeleton',
      config = function()
        vim.fn['skkeleton#config']({ globalJisyo = '~/.skk/dict/SKK-JISYO.L' })
        vim.keymap.set('i', '<C-j>', '<Plug>(skkeleton-toggle)')
        vim.keymap.set('c', '<C-j>', '<Plug>(skkeleton-toggle)')
      end
    },
    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      config = function ()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
          ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'elixir', 'heex', 'javascript', 'html' },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
      end
    },
  }
}
