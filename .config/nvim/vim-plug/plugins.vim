" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " colorscheme
    Plug 'tomasiser/vim-code-dark'
    " Hex color codes
    Plug 'Pocco81/HighStr.nvim'
    " Hex color codes
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    " autocompleation
    " Plug 'vim-scripts/AutoComplPop'
    " autocpmpleation
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " colorscheme
    Plug 'tomasiser/vim-code-dark'
    Plug 'rakr/vim-one'
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
