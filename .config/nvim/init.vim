if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Hex color codes
    Plug 'Pocco81/HighStr.nvim'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    " Autocpmpleation
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " colorscheme
    Plug 'tomasiser/vim-code-dark'
    Plug 'rakr/vim-one'
    Plug 'romgrk/doom-one.vim'
    Plug 'nekonako/xresources-nvim'
    Plug 'morhetz/gruvbox'
    Plug 'overcache/NeoSolarized'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " NerdTree
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'scrooloose/nerdcommenter'
    " fuzzy
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


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
" colorscheme doom-one
" colorscheme xresources
" colorscheme gruvbox
" colorscheme NeoSolarized
set showtabline=2
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
nnoremap <leader>H :split<Return>
nnoremap <leader>V :vsplit<Return>
" nnoremap <leader>h :split<Space>
" nnoremap <leader>v :vsplit<Space>

" NerdTree
" autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nmap <leader>n :NERDTreeToggle<Return>
let NERDTreeShowHidden=1

" Splitt Navigaton
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" FZF
nnoremap <leader>p :FZF ~<Return>

" coc settings
source ~/.config/nvim/coc-settings.vim

set wildmode=longest,list,full
let g:Hexokinase_highlighters = ['backgroundfull']
set complete+=kspell
set completeopt=menuone,longest,preview
set shortmess+=c
let g:airline_powerline_fonts = 1
" set bg=light
