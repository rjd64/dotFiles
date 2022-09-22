require('toggleterm').setup{
  direction = 'horizontal',
  open_mapping = '<leader>t',

  insert_mapping = true,
  terminal_mapping = true,

  persist_mode = true,
  close_on_exit = true,

  shade_terminals = true,
  float_opts = {
    border = 'curved',
  },
}

-- custom user commands based off toggle term functionality

vim.cmd[[com! -nargs=1 Pyman
\ :13TermEx direction=horizontal size=50 go_back=0 cmd='pydoc <args> | less'<CR>
]]

local opts = {silent = true, noremap = true}
vim.keymap.set('n', '<leader>tt', '<CMD>ToggleTermSendCurrentLine<CR>', opts)
vim.keymap.set('n', '<leader>tv', '<CMD>ToggleTermSendVisualSelection<CR>',opts)
vim.keymap.set('n', '<leader>tV', '<CMD>ToggleTermSendVisualLines<CR>', opts)
vim.keymap.set('n', '<leader>ta', '<CMD>ToggleTermToggleAll<CR>', opts)
vim.keymap.set('t', '<leader>tc', '<CMD>close<CR>', opts)
