-- This file can be loaded by calling `lua require('plugins')` from your init.vimima

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'  

  -- LSP plugins
  use {
      {
        'neovim/nvim-lspconfig', -- configuration plugin for neovim builtin lsp
        requires = {
          'hrsh7th/nvim-cmp',
          'p00f/clangd_extensions.nvim',
        },
        config = [[require'cfg.lsp']],
      },
      {
        'kosayoda/nvim-lightbulb', -- add vscode lightbulb icon for code actions
        requires = 'antoinemadec/FixCursorHold.nvim',
        config = [[require'cfg.lightbulb']],
        after = 'nvim-lspconfig', -- lazy load
      },
      {
        'weilbith/nvim-code-action-menu', -- floating menu interface for ca's
        cmd = 'CodeActionMenu',
        after = 'nvim-lspconfig', -- lazy load
      },
    }

   --treesitter plugins
   use {
      {
        'nvim-treesitter/nvim-treesitter', -- treesitter parser / syntax highlight
        requires = {
          -- adds semantically aware textobjects using ts
          {
            'nvim-treesitter/nvim-treesitter-textobjects',
            after='nvim-treesitter'
          },
          -- add smart refactor/rename command based on ts
          {
            'nvim-treesitter/nvim-treesitter-refactor',
            after='nvim-treesitter'
          },
        },
        config = [[require'cfg.treesitter']],
        run = ':TSUpdate',
        event = 'BufWinEnter', -- lazy load
      },
      {
        'nvim-treesitter/nvim-treesitter-context', -- display ts "context"
        requires = 'nvim-treesitter',
        config = [[require'cfg.treesitter-context']],
        after = 'nvim-treesitter',
      },
      {
        'nvim-treesitter/playground', -- experiment with treesitter queries
        cmd = 'TSPlaygroundToggle',
        after = 'nvim-treesitter'
      },
    }
   

    -- cmp: async modular neovim completion written in lua
    use {
      'hrsh7th/nvim-cmp',
      -- various nvim-cmp source plugins
      requires = {
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
      config = [[require'cfg.cmp']],
    }
  
    --marks plugin
    use {
      'chentoast/marks.nvim',
      event = 'BufWinEnter',
      config = [[require'cfg.marks']],
    }


    -- telescope: neovim's builtin fuzzy finder
    use {
      {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {
          'nvim-lua/popup.nvim', -- telescope dependencies
          'nvim-lua/plenary.nvim',
          'nvim-telescope/telescope-fzf-native.nvim', -- telescope extensions
          'nvim-telescope/telescope-file-browser.nvim',
          'nvim-telescope/telescope-packer.nvim',
          'nvim-telescope/telescope-github.nvim',
          'nvim-telescope/telescope-media-files.nvim',
          'cljoly/telescope-repo.nvim',
        },
        wants ={
          'popup.nvim',
          'plenary.nvim',
          'telescope-fzf-native.nvim',
          'telescope-file-browser.nvim',
        },
        config = [[require'cfg.telescope']],
      },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        config = [[require'cfg.telescope-fzf-native']],
        run  = 'make',
      },
      {
        'nvim-telescope/telescope-file-browser.nvim',
        config = [[require'cfg.telescope-file-browser']],
      },
      {
        'cljoly/telescope-repo.nvim',
        config = [[require'cfg.telescope-repo']],
        event = 'CmdlineEnter',
      },
      {
        'nvim-telescope/telescope-packer.nvim',
        config = [[require'cfg.telescope-packer']],
        event = 'CmdlineEnter',
      },
      {
        'nvim-telescope/telescope-github.nvim',
        config = [[require'cfg.telescope-github']],
        event = 'CmdlineEnter',
      },
      {
        'nvim-telescope/telescope-media-files.nvim',
        config = [[require'cfg.telescope-media-files']],
        event = 'CmdlineEnter',
      }
    }

    -- kitty terminal plugins
    use {
      -- syntax highlighting for kitty config files
      { 'fladson/vim-kitty'  },
      -- tmux like navigation with kitty windows
      { 'knubie/vim-kitty-navigator', run = 'cp ./*.py ~/.config/kitty' },
      -- use kitty graphics protocol to display images in nvim buffer
      { 'edluffy/hologram.nvim', disable = true },
    }
    
    -- git plugins
        
    use {
      { 'tpope/vim-fugitive' }, -- git wrapper functions
      {
        'lewis6991/gitsigns.nvim', -- display git diff signs in columns
        tag = 'release',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require'cfg.gitsigns']],
        event = 'BufWinEnter',
      },
      {
        'pwntester/octo.nvim', -- github cli wrappers
        requires = {
          'nvim-lua/plenary.nvim',
          'nvim-telescope/telescope.nvim',
          'kyazdani42/nvim-web-devicons',
        },
        config = [[require'cfg.octo']],                              
        cmd = "Octo",
      }
    }
    
    -- vista.vim: tagbar like plugin with added support for LSP symbols
    use {
      'liuchengxu/vista.vim',
      config = [[require'cfg.vista']],
      cmd = 'Vista',
      keys = {
        '<leader>v',   -- toggle vista window
        '<leader>vv',  -- focus vista window
        '<leader>vt',  -- open vista ctags 
        '<leader>vl',  -- open vista lsp
        '<leader>vs',  -- show vista
        '<leader>vf',  -- open vista finder
      },
    }
    
    -- trouble.nvim: better diagnositics, quickfix and loclist window
    use {                                  
      'folke/trouble.nvim',  -- better handling of diagnostics and quickfix
      requires = 'kyazdani42/nvim-web-devicons',
      config = [[require'cfg.trouble']],   
    }

    use {
      {  
        'nvim-lualine/lualine.nvim', -- status line written in lua
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require'cfg.lualine']],
        after = 'tabline.nvim',
      },
      {   
        'kdheepak/tabline.nvim', -- tab line written in lua
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require'cfg.tabline']],
        event = 'BufWinEnter',
      },
      { 'nvim-lua/lsp-status.nvim', disable = true },
    }

    --aesthetic
    --use 'tanvirtin/monokai.nvim'
    --use 'shaunsingh/nord.nvim'
    use 'cocopon/iceberg.vim'
    use { 'goolord/alpha-nvim',config = [[require'cfg.alpha']] }
    use { 'karb94/neoscroll.nvim', config = [[require'cfg.scroll']] }

    --header plugin
    use 'alpertuna/vim-header'

    -- async build tools
    use {
      'radenling/vim-dispatch-neovim',
      requires = 'tpope/vim-dispatch',
      config = [[require'cfg.dispatch']],    
    }


    -- toggleterm.nvim: builtin neovim terminal wrapper
     use {
      "akinsho/toggleterm.nvim",
      tag = 'v2.*',
      config = [[require'cfg.toggleterm']],
      event = 'CmdlineEnter',
      keys = '<leader>t'
    }

    -- LaTex
    use {
      'lervag/vimtex',
      config = [[require'cfg.vimtex']],
      ft = { 'tex', 'plaintex', 'bib' },
    }

    -- register utility / display
    use 'tversteeg/registers.nvim'
    -- shell wrapper commands for vim
    use 'tpope/vim-eunuch'
    -- add some useful unicode commands
    use 'chrisbra/unicode.vim'

    -- improve native vim ui-select
    use { 'stevearc/dressing.nvim', config = [[require'cfg.dressing']] }
    -- auto switch neovim directory to project root
    use { 'notjedi/nvim-rooter.lua', config = [[require'cfg.rooter']] }
    -- undotree: provide graphic representation of vim's undo tree
    use { 'mbbill/undotree',  cmd = 'UndotreeToggle' }

    use 'vim-scripts/pylint.vim'
    
    -- editing plugins
    use {
      { 'numToStr/Comment.nvim', config = [[require'cfg.comment']] },
      { 'kylechui/nvim-surround', config = [[require'cfg.surround']] },
      { 'windwp/nvim-autopairs', config = [[require'cfg.auto-pairs']] },
      { 'junegunn/vim-easy-align', config = [[require'cfg.easy-align']] },
    }

    -- ranger plugin
    use	'kevinhwang91/rnvimr'

    use{
	'Shatur/neovim-session-manager',
	requires = 'nvim-lua/plenary.nvim',
	config = [[require'cfg.session-manager']],
    }
    
end)

