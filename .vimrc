" plugins
let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let need_to_install_plugins = 1
endif

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype plugin indent on
syntax on

if need_to_install_plugins == 1
    echo "Installing plugins..."
    silent! PlugInstall
    echo "Done!"
    q
endif
set laststatus=2

set t_Co=256
set t_ut=

syntax on
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4

set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

set hidden
set nobackup

set termguicolors
"colorscheme molokai
colorscheme onedark

set noshowmode
"let g:lightline = { 'colorscheme': 'molokai' }
let g:lightline = { 'colorscheme': 'onedark' }
