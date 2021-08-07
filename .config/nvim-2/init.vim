call plug#begin('~/.vim/plugged')

"Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/NERDTree'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'vim-scripts/AutoComplPop'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'tomasiser/vim-code-dark'
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'Pocco81/HighStr.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'rakr/vim-one'
Plug 'nekonako/xresources-nvim'

call plug#end()


" Leader Key
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
" colorscheme codedark
" colorscheme one
colorscheme xresources

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

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
command! -nargs=0 Prettier :CocCommand prettier.formatFile
