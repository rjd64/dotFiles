return{
{
      'hrsh7th/nvim-cmp',
      -- various nvim-cmp source plugins
      dependencies = {
        'dcampos/nvim-snippy', -- TextMate style snippets plugin 
        'dcampos/cmp-snippy', 
        'hrsh7th/cmp-calc', -- sources from plugin author
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-nvim-lsp-document-symbol',
        'ray-x/cmp-treesitter', -- other useful sources
        'kristijanhusak/vim-dadbod-completion',
        'petertriho/cmp-git',
        'kdheepak/cmp-latex-symbols',
        'lukas-reineke/cmp-rg',
        --'paopaol/cmp-doxygen',
        'onsails/lspkind.nvim', -- LSP icons
      },
      config = function()
              require'cfg.cmp'
      end,
    }
}
