if has('vim_starting')
    set nocompatible
endif

" Automatic installation of vim-plug
let vimplug_file=expand('~/.local/share/nvim/site/autoload/plug.vim')
let vimplug_repo='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if !filereadable(vimplug_file)
  silent exec '!curl -fLo '.vimplug_file.' --create-dirs '.vimplug_repo
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" I learned to like Vim in spacemacs so..
let mapleader = "\<Space>"

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'itchyny/lightline.vim'

call plug#end()

" Make vim create backups in a common place.
set backupdir=~/.backup//,/tmp//
set directory=~/.backup//,/tmp//

" General editor settings.
set showcmd
set hlsearch
set scrolloff=5
set number         " Line numbers,
set autowrite      " Write on make.
set hidden         " Let buffers stay open in background.



" No tabs please
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" omni complete by syntax
set omnifunc=syntaxcomplete#Complete

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" NERDTree settings


" GO Settings
map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Open nerdtree by default.
autocmd vimenter * NERDTree
