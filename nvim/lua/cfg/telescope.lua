local telescope = require('telescope')
local previewers = require('telescope.previewers')
local builtin = require('telescope.builtin')
local trouble = require('trouble.providers.telescope')
-- telescope extensions
--local gh = telescope.extensions.gh
--local repo = telescope.extensions.repo
local file_browser = telescope.extensions.file_browser
local media_files = telescope.extensions.media_files


-- telescope setup function
telescope.setup{
  defaults = {
    -- initial_mode = 'normal',
    theme = 'dropdown',
    -- file_previewer = previewers.bat.new,
    mappings = {
      i = { ['<C-t>'] = trouble.open_with_trouble },
      n = { ['<C-t>'] = trouble.open_with_trouble },
    },
    pickers = {
      lsp_references = {
        theme = 'get_cursor',
      },
      lsp_definitions = {
        theme = 'get_cursor',
      },
      lsp_type_definitions = {
        theme = 'get_cursor',
      },
      lsp_implementations = {
        theme = 'get_cursor',
      },
      lsp_document_symbols = {
        theme = 'get_cursor',
      },
      lsp_workspace_symbols = {
        theme = 'get_cursor',
      },
      lsp_dynamic_workspace_symbols = {
        theme = 'get_cursor',
      },
      live_grep = {
        theme = 'ivy',
      },
      grep_string = {
        theme = 'ivy',
      },
      buffers = {
        theme = 'ivy',
      },
    },
  },
  extensions = {
    file_browser = {
      grouped = true,
      hijack_netrw = true,
    },
    media_files = {
      filetypes = {'pdf','png', 'webp', 'jpg', 'jpeg'},
      find_cmd = 'rg',
    } 
  },
}
      
-- set wrap line mode for telescope preview
vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePreviewerLoaded',
  callback = function() vim.cmd[[setlocal wrap]] end
})  
