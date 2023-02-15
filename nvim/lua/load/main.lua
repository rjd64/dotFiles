return {
	{
		'knubie/vim-kitty-navigator', 
		build = 'cp ./*.py ~/.config/kitty',
	},

	{
	      'liuchengxu/vista.vim',
	      config = function()
		      require'cfg.vista'
	      end,
	      cmd = 'Vista',
	      --keys = {
		--'<leader>v',   -- toggle vista window
		--'<leader>vv',  -- focus vista window
		--'<leader>vt',  -- open vista ctags 
		--'<leader>vl',  -- open vista lsp
		--'<leader>vs',  -- show vista
		--'<leader>vf',  -- open vista finder
	      --},
	},

	{                                  
	      'folke/trouble.nvim',  -- better handling of diagnostics
	      dependencies = 'kyazdani42/nvim-web-devicons',
	      config = function()
		      require'cfg.trouble'
	      end,
    	},

	{
	      "akinsho/toggleterm.nvim",
	      version = 'v2.*',
	      config = function()
		      require'cfg.toggleterm'
	      end,
	      --event = 'CmdlineEnter',
	      --keys = '<leader>t'
    	},

	{
		'Shatur/neovim-session-manager',
		dependencies = 'nvim-lua/plenary.nvim',
		config = function()
			require'cfg.session-manager'
		end,
	},
	
}
