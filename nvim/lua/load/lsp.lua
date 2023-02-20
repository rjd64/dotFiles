return{
   {
      {
        'neovim/nvim-lspconfig', -- configuration plugin for neovim builtin
        dependencies = {
          'hrsh7th/nvim-cmp',
          'p00f/clangd_extensions.nvim',
        },
        config = function()
                require'cfg.lsp'
        end
        ,
      },

      {
        'kosayoda/nvim-lightbulb', -- add vscode lightbulb icon code actions
        dependencies = 'antoinemadec/FixCursorHold.nvim',
        config = function()
                require'cfg.lightbulb'
        end
        ,
      },

      {
        'weilbith/nvim-code-action-menu', -- floating menu interface for ca's
        cmd = 'CodeActionMenu',
      },
      {
              'pixelneo/vim-python-docstring', --better python docstring
              config = function()
                      vim.g.python_style = 'numpy'
              end,

      },

    }
}
