return{
{
      {
        'nvim-treesitter/nvim-treesitter', -- treesitter parser / syntax highlight
        dependencies = {
          -- adds semantically aware textobjects using ts
          {
            'nvim-treesitter/nvim-treesitter-textobjects',
            dependencies='nvim-treesitter'
          },
          -- add smart refactor/rename command based on ts
          {
            'nvim-treesitter/nvim-treesitter-refactor',
            dependencies='nvim-treesitter'
          },
        },
        config = function()
                require'cfg.treesitter'
        end,
        run = ':TSUpdate',
        event = 'BufWinEnter', -- lazy load
      },

      {
        'nvim-treesitter/nvim-treesitter-context', -- display ts "context"
        config = true ,
        dependencies = 'nvim-treesitter',
      },

      {
        'nvim-treesitter/playground', -- experiment with treesitter queries
        cmd = 'TSPlaygroundToggle',
        dependencies = 'nvim-treesitter',
      },
      
      {
        "danymat/neogen", -- create doc strings
        dependencies = "nvim-treesitter",
        opts = { snippet_engine = "snippy" },
        cmd = "Neogen",
      },
    }
}
