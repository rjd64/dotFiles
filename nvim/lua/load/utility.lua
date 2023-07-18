return{
        -- {
        --           "AckslD/nvim-neoclip.lua",
        --           dependencies = 'nvim-telescope/telescope.nvim',
        --           config = function()
        --                   -- require('neoclip').setup()
        --                   require('neoclip')
        --           end,
        -- },

        {
                'chentoast/marks.nvim', 
                event = 'BufWinEnter',
                config = function()
                        require'cfg.marks'
                end,
        },

        {
                'tpope/vim-fugitive' --git wrapper functions
        }, 
        
        {
                'lewis6991/gitsigns.nvim', -- display git diff signs in columns
                dependencies = 'kyazdani42/nvim-web-devicons',
                config = true,
                event = 'BufWinEnter',
        },

        {                                  
              'folke/trouble.nvim',  -- better handling of diagnostics and quickfix
              dependencies = 'kyazdani42/nvim-web-devicons',
              config = function()
                      require'cfg.trouble'
              end,
        },

        {  
          'nvim-lualine/lualine.nvim', -- status line written in lua
          dependencies = 'kyazdani42/nvim-web-devicons',
          event = 'BufWinEnter',
          config = function()
                  require'cfg.lualine'
          end
        },

        {   
          'kdheepak/tabline.nvim', -- tab line written in lua
          dependencies = 'kyazdani42/nvim-web-devicons',
          config = true,
          event = 'BufWinEnter',
        },

        {
                'rebelot/kanagawa.nvim', 
                config = function()
                        vim.cmd.colorscheme [[kanagawa]]
                end
        },

    {
        'goolord/alpha-nvim',
        config = function()
                require'cfg.alpha'
        end
    },

    {
        'karb94/neoscroll.nvim',
        config = function()
                require'cfg.scroll'
        end
    },

    --header plugin
    {
        'alpertuna/vim-header',
        config = function()
                vim.g.header_field_author_email = 'rjd64@pitt.edu'
                vim.g.header_field_author = 'Ryan Dibble'
                vim.g.header_field_filename = 1
                vim.g.header_field_modified_timestamp = 0
                vim.g.header_field_timestamp_format = '%d.%m.%Y'
                vim.g.header_field_modified_by = 0
        end
    },

    -- async build tools
    {
      'radenling/vim-dispatch-neovim',
      dependencies = 'tpope/vim-dispatch',
      config = function()
              require'cfg.dispatch'
      end
    },

    {
            'tversteeg/registers.nvim',
            config = true
    },

    {
        'tpope/vim-eunuch'
    },

    {
        'chrisbra/unicode.vim'
    },

    --improve native vim ui-select
    {
            'stevearc/dressing.nvim',
            config = true
    },

    -- auto switch neovim directory to project root
    {
            'notjedi/nvim-rooter.lua',
            config = true
    },
    
    {
            'mbbill/undotree',
            cmd = 'UndotreeToggle'
    },
    
    {
            'vim-scripts/pylint.vim'
    },

    {
           { 'numToStr/Comment.nvim', 
           config = true
           },

           { 'kylechui/nvim-surround',
           config = true
           },

           { 'windwp/nvim-autopairs', 
           config = true
           },

           { 'junegunn/vim-easy-align', 
           config = function()
                   require'cfg.easy-align'
           end,
           },
    },
}

