syntax on

set relativenumber
set number
set hidden
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set hlsearch
"set incsearch

"unsure why exactly
set exrc
set guicursor=
set noerrorbells

"
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme gruvbox
"highlight Normal guibg=none

"from yt
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup end

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" esc in insert mode
inoremap kj <esc>
" esc in command mode
cnoremap kj <C-C>
" Note: In command mode mappings to esc run the command for some odd
" historical vi compatibility reason. We use the alternate method of
" existing which is Ctrl-C
