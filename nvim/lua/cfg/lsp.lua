local clangd_exts = require('clangd_extensions')
local lspconfig = require('lspconfig')
local cmp = require('cmp_nvim_lsp')

--create nvim-cmp capabilities for lsp client
local cap = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function list_ws_folders()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end

local open_menu = [[<CMD>CodeActionMenu<CR>]]
     
-- local menu = [[<CMD>lua require'code_action_menu'.open_code_action_menu()<CR>]]

-- callback function on lsp buffer attatch
  -- define keymaps for LSP buffers 
local callback = function(_, bufn)
  local opts = { noremap = true, silent = true, buffer = bufn }
  vim.api.nvim_buf_set_option(bufn, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- gd: go to definition of sym under cursor
  vim.keymap.set('n', 'gd',         vim.lsp.buf.definition, opts)
  -- gD: go to declaration of sym under cursor
  vim.keymap.set('n', 'gD',         vim.lsp.buf.declaration, opts)

  -- gi: list all implementations for symbol under cursor in qf window 
  vim.keymap.set('n', 'gi',         vim.lsp.buf.implementation, opts)
  -- gr: list all references to the symbol under cursor in qf window 
  vim.keymap.set('n', 'gr',         vim.lsp.buf.references, opts)
  -- K: display hover info for symbol under cursor in floating window
  vim.keymap.set('n', 'K',          vim.lsp.buf.hover, opts)
  -- \h: display signature info for the symbol under curor in flaoting window
  vim.keymap.set('n', '<leader>h',  vim.lsp.buf.signature_help, opts)

  -- \d: jump to the definition of the type for the symbol under cursor
  vim.keymap.set('n', '<leader>d',  vim.lsp.buf.type_definition, opts)
  -- \rn: rename all buffer references to symbol under cursor 
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  -- \ca: use floating menu to perform code action
  vim.keymap.set('n', '<leader>ca', open_menu, opts)
     
  -- \wl: list all folders in current workspace
  vim.keymap.set('n', '<leader>wl', list_ws_folders ,opts)
  -- \wa: add new folder to workspace
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  -- \wr: remove a wolder from workspace
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  -- \fo: lsp format buffer
  vim.keymap.set('n', '<leader>fo', vim.lsp.buf.formatting, opts)
end


-- disable diagnostic inline virtual text and sign column, keep underline
  -- use trouble as interface to diagnostics
--vim.diagnostic.config({virtual_text = false, signs = false})

-- add command alias A for alternate
vim.cmd[[cnoreabbrev A ClangdSwitchSourceHeader]]
-- set up clangd lsp extensions
clangd_exts.setup{
  server = {
    on_attach = callback,
    settings = {
      capabilities = cap,
      telemetry = {enable = false},
    }
  }
}
-- set up cmake language server
lspconfig.cmake.setup{
  on_attach = callback,
  settings = {
    capabilities = cap,
    telemetry = {enable = false},
  }
}

-- setup pyright language server
lspconfig.pyright.setup {
  on_attach = callback,
  settings = {
    cababilitities = cap,
    telemetry = {enable = false},
  },
  single_file_support = true,
}
-- setup texlab language server
lspconfig.texlab.setup{
  on_attach = callback,
  settings = {
    capabilities = cap,
    telemetry = {enable = false},
  },
}
