source $HOME/.config/nvim/vim-plug/plugins.vim

set number
" set bg=light

autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
set mouse=a
syntax on
set ignorecase
set smartcase
set number relativenumber
set termguicolors
colorscheme codedark
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b
set wildmode=longest,list,full
let g:Hexokinase_highlighters = ['backgroundfull']
set complete+=kspell
set completeopt=menuone,longest,preview
set shortmess+=c
let mapleader=" "
nnoremap <leader>h :split<Return>
nnoremap <leader>v :vsplit<Return>
" nnoremap <leader>h :split<Space>
" nnoremap <leader>v :vsplit<Space>
