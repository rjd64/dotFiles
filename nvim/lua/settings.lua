local set = vim.opt
local g = vim.g

g.loaded_python3_provider = 0
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1

set.wildignore = {'*.o', '*.so', '*.pyc', '*.class', '*.hi'}

set.confirm = true
set.vb = true

set.browsedir = 'buffer'
set.diffopt = 'vertical'

-- display
set.title = true
set.showcmd = true
set.wildmenu = true
set.cursorline = true
set.ruler = true
set.number = true
set.relativenumber = true
set.laststatus = 3
set.lazyredraw = true

-- line breaks
set.tw = 80
set.linebreak = true
set.breakindent =true
set.expandtab = true

-- search
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- grep
vim.cmd [[set grepprg=rg\ --vimgrep\ --no-heading]]
vim.cmd [[set grepformat=%f:%l:%c:%m,%f:%l:%m]]

-- colorscheme
--vim.cmd [[colorscheme monokai_soda]]
--vim.cmd [[colorscheme nord]]
--vim.cmd [[colorscheme iceberg]]
--vim.cmd [[colorscheme gruvbox]]
-- treesitter fold settings ?

-- 
-- set.foldmethod = 'expr'
-- set.foldexpr = 'nvim_treesitter#foldexpr()'
-- start every file with folds open
-- autocmd BufReadPost,FileReadPost * normal zR
