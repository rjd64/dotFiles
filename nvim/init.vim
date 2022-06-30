" File: init.vim
" Author: Ryan Dibble <rjd64pitt@gmail.com>
" Date: 29.06.2022
" Last Modified Date: 30.06.2022
" Last Modified By: Ryan Dibble <rjd64pitt@gmail.com>

" ignore compiled files
set wildignore=*.0,*.pyc,.class,,*.hi
" ask me before doing anything dangerous
set confirm
" change working dir to current buffer
set autochdir
" disable audible bell by setting visual bell
set vb
" set file browser behavior 
set browsedir="buffer"
" set diff behavior
set diffopt
" show filename in window
set title
" show normal md cmds, visual mode size
set showcmd
" enhanced command line completions
set ruler
" underline current editing line
set cursorline
" show line number wrt to current line
set number
set relativenumber
" always show the status bar
set laststatus=2
" shut off completion messages
set shortmess+=c
" dont redraw screen unnecessarilly
set lazyredraw

colorscheme molokai
" formatting options
set tw=100
set breakat=100
set linebreak
set breakindent

"highlight search matches
set hlsearch
" search for pattern matches as itype
set incsearch
" dont use case sensitive searches
set ignorecase
" unless the usr types a capital letter
set smartcase
nnoremap <space> :nohlsearch<CR>
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
" you are not allowed to use the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set rtp+=/usr/local/opt/fzf
call plug#begin('~/.local/share/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer' 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'nvim-treesitter/nvim-treesitter', {'do' : ':TSUpdate' }
Plug 'folke/trouble.nvim'
Plug 'junegunn/fzf.vim'
	"start FZF in $PWD
	nnoremap <leader>ff :FZF<CR>
	nnoremap <leader>fh :FZF ~<CR>]
Plug 'liuchengxu/vista.vim'
	nnoremap<leader>vv :Vista<CR>
	let g:vista_close_on_jump = 1
	let g:vista_sidebar_position='vertical topleft'
	let g:vista_icon_indent = ["╰─> ", "├─> "]
	let g:vista_default_executive = 'nvim_lsp'
	let g:vista_update_on_text_changed = 1
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter'  
Plug 'tpope/vim-commentary'  
Plug 'machakann/vim-sandwich'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'karb94/neoscroll.nvim'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'SirVer/ultisnips'
	let g:UltiSnipsSnippetDirectories=["~/.local/share/nvim/snips/"]
      	let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
      	let g:UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
	let g:UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
      	let g:UltiSnipsListSnippets = '<c-x><c-s>'
      	let g:UltiSnipsRemoveSelectModeMappings = 0

Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'alpertuna/vim-header'
	let g:header_field_author = 'Ryan Dibble'
	let g:header_field_author_email = 'rjd64pitt@gmail.com'
	let g:header_auto_add_header = 1
	let g:header_alignment = 0
	let g:header_field_modified_timestamp = 0
	let g:header_field_modified_by = 0
	let g:header_field_timestamp_format = '%m-%d-%Y %H:%M:%S'
Plug 'hanschen/vim-ipython-cell'
call plug#end()

lua require('nvim-cmp')
lua require('nvim-lsp')
lua require('treesitter')
lua require('nvim-trouble')
lua require('nvim-lualine')
lua require('nvim-scroll')

