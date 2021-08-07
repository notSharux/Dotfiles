source $HOME/.config/nvim/vim-plug/plugins.vim


let mapleader=" "

" Use system clipboard
set clipboard+=unnamedplus

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Basic settings
set mouse=a
syntax on
set ignorecase
set smartcase
set number relativenumber
set termguicolors
colorscheme codedark
" colorscheme one

" Tab Settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b

" Splitting
nnoremap <leader>h :split<Return>
nnoremap <leader>v :vsplit<Return>
" nnoremap <leader>h :split<Space>
" nnoremap <leader>v :vsplit<Space>

set wildmode=longest,list,full
let g:Hexokinase_highlighters = ['backgroundfull']
set complete+=kspell
set completeopt=menuone,longest,preview
set shortmess+=c
" set number
" set bg=light
