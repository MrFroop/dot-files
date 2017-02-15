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

Plugin 'tpope/vim-surround'

" Command line 
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'airblade/vim-gitgutter'

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
set number " Line numbers

" No tabs please
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" omni complete by syntax
set omnifunc=syntaxcomplete#Complete
