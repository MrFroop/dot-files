set nocompatible

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" GIT support
Plugin 'tpope/vim-fugitive'

" Auto completion
Plugin 'Valloric/YouCompleteMe'

" Enable Ctrl-a and friends
Plugin 'tpope/vim-rsi'

" Tell vundle we are done
call vundle#end()

" General settings
filetype plugin indent on 
set autoindent

" Make vim create backups in a common place
set backupdir=~/.backup//,/tmp//
set directory=~/.backup//,/tmp//

" General editor settings
set showcmd
set hlsearch
set scrolloff=5

" No tabs please
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

