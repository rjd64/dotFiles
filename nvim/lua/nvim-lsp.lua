local lspconfig = require("lspconfig")
local nv_cmp = require('cmp_nvim_lsp')
local capabilities = nv_cmp.update_capabilities(
  vim.lsp.protocol.make_client_capabilities())

-- define keymaps for LSP
local opts = { noremap = true, silent = true }
local on_attach = function(_, buffer)
  vim.api.nvim_buf_set_option(buffer, 'omnifunc', 
    'v:lua.vim.lsp.omnifunc')
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gD', 
    '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gd', 
    '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>h', 
    '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>d', 
    '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gr', 
    '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gi', 
    '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>ca', 
    '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<C-k>', 
    '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>rn', 
    '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>wa', 
    '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>wr', 
    '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>fo', 
    '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<space>ca', 
    '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>wl', 
  --   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
end


--disable inline error messsages for nvim-trouble plugin
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

-- setup pyright language server
lspconfig.pyright.setup {
  on_attach = on_attach,
  settings = {
    cababilitities = cababilitities
  }
}
