set nocompatible

" I learned to like Vim in spacemacs so i'm used to space as leader.
let mapleader = "\<Space>"

" Automatic installation of vim-plug
let vimplug_file=expand('~/.local/share/nvim/site/autoload/plug.vim')
let vimplug_repo='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

"*****************************************************************************
"* Plugins
"*****************************************************************************

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
Plug 'bronson/vim-trailing-whitespace'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

"*****************************************************************************
"* General editor settings.
"*****************************************************************************

set showcmd        " Show current command.
set hlsearch       " Highlight searches.
set scrolloff=5    " Tries to keep this many lines before the cursor.
set number         " Line numbers.
set autowrite      " Write on make.
set hidden         " Let buffers stay open in background.

set expandtab      " Expands tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Make vim create backups in a common place.
set backupdir=~/.backup//,/tmp//
set directory=~/.backup//,/tmp//

"*****************************************************************************
"* YCM Settings
"*****************************************************************************

" omni complete by syntax
set omnifunc=syntaxcomplete#Complete

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"*****************************************************************************
"* NERDTree settings
"*****************************************************************************

" Open nerdtree by default.
autocmd vimenter * NERDTree

let g:NERDTreeChDirMode=2                           " On change tree root
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=35

" Close vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"*****************************************************************************
"* GO Settings
"*****************************************************************************
map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

let g:go_list_type = "quickfix"

"*****************************************************************************
"* Misc Plugin Settings
"*****************************************************************************

