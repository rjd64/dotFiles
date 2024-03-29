-- vista keymaps

-- \v: toggle vista window
vim.keymap.set('n', '<leader>v',  ':Vista!!<CR>')
-- \vv: focus open vista window 
vim.keymap.set('n', '<leader>vv', ':Vista focus<CR>')
-- \vs: jump to tag nearest cursor, only works with ctags
vim.keymap.set('n', '<leader>vs', ':Vista show<CR>')
-- \vc: open vista with ctags symbols
vim.keymap.set('n', '<leader>vt', ':Vista ctags<CR>')
-- \vl: open vista with lsp symbols
vim.keymap.set('n', '<leader>vs', ':Vista nvim_lsp<CR>')
-- \vf: search tags recursively (may be slow on large projects)
vim.keymap.set('n', '<leader>vf', ':Vista finder<CR>')
-- \vc: close open vista window
vim.keymap.set('n', '<leader>vc', ':Vista!<CR>')

-- vista variables
vim.g.vista_icon_indent = { '╰─➤ ' , '├─➤ ' }
vim.g.vista_sidebar_position = 'vertical topleft'
vim.g.vista_update_on_text_changed = true
vim.g.vista_close_on_jump = true
vim.g.close_on_fzf_select = true
vim.g.vista_default_executive = 'ctags'
vim.g.vista_ctags_cmd = {
  haskell  = 'hasktags -x -o - -c',
  lhaskell = 'hasktags -x -c - -c',
}

vim.g.vista_executive_for = {
  c = 'nvim_lsp',
  cmake = 'nvim_lsp',
  cpp = 'nvim_lsp',
  python = 'nvim_lsp',
  bash = 'nvim_lsp',
  lua = 'nvim_lsp',
  json = 'nvim_lsp',
  css = 'nvim_lsp',
  html = 'nvim_lsp',
}
