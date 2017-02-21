set nocompatible

" I learned to like Vim in spacemacs so i'm used to space as leader.
let mapleader = "\<Space>"

"*****************************************************************************
"* Plugins
"*****************************************************************************
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
Plug 'wincent/command-t'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'

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

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Let Ctrl-C double as Esc
nnoremap <C-c> <esc>

"*****************************************************************************
"* YCM Settings
"*****************************************************************************

" omni complete by syntax
set omnifunc=syntaxcomplete#Complete


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

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" Run :GoBuild or :GoTestCompile based on the go file.
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#cmd#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

"*****************************************************************************
"* Tmux navigato
"*****************************************************************************
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <S-Left>  :TmuxNavigateLeft<cr>
nnoremap <silent> <S-Down>  :TmuxNavigateDown<cr>
nnoremap <silent> <S-Up>    :TmuxNavigateUp<cr>
nnoremap <silent> <S-Right> :TmuxNavigateRight<cr>
nnoremap <silent> <S-p>     :TmuxNavigatePrevious<cr>

"*****************************************************************************
"* Misc Plugin Settings
"*****************************************************************************
let g:UltiSnipsExpandTrigger = "<c-j>"
