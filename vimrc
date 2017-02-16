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

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' } 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Make vim create backups in a common place
set backupdir=~/.backup//,/tmp//
set directory=~/.backup//,/tmp//

" General editor settings
set showcmd
set hlsearch
set scrolloff=5
set number         " Line numbers

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
