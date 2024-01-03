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
      'tpope/vim-fugitive'
    },
    {
      'airblade/vim-gitgutter'
    },
    {
      'lambdalisue/fern.vim',
      keys = { 
        { '<C-e>', ':Fern . -drawer -toggle -reveal=% <CR>', silent = true }
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
      'vim-skk/skkeleton'
    },
    {
      'nvim-treesitter/nvim-treesitter'
    },
  }
}
