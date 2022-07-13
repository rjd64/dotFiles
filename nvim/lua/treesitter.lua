-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall

require('nvim-treesitter.configs').setup {
 -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- false will disable the whole extension
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  indent = {
    enable = false,
  },
  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
        -- 'a' for argument
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['aC'] = '@conditional.outter',
        ['iC'] = '@conditional.inner',
        ['aL'] = '@loop.outer',
        ['iL'] = '@loop.inner',
      },
    },
    move = {
      enable = true,
      -- whether to set jumps in the jumplist
      set_jumps = true,
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
  },
  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
      navigation = {
        enable = true,
        keymaps = {
          list_definitions = 'glD',
          list_definition_toc = 'g0',
          goto_next_usage = '<a-*>',
          goto_previous_usage = '<a-#>',
       },
     },
    },
  },
}

require'treesitter-context'.setup{}
