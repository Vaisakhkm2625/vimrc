syntax on

set noerrorbells  
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"set path+=**

set colorcolumn=80
highlight ColorColumn ctermbg=0

set background=dark

"leader key given space
let mapleader=" "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>
"-----|to quickly add line next |------------
"
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D







"-----|Relative or absolute number lines|-------

function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction

nnoremap <C-m> :call NumberToggle()<CR>

"-----|sys-clipboard for nvim|-------
   if has('nvim')
    noremap <Leader>y "*y
    noremap <Leader>p "*p
    noremap <Leader>Y "+y
    noremap <Leader>P "+p 
   endif

"===============================|plug-ins|=====================================


" Need to add youCompleteMe plugin 
    " http://


"plug-in manager vim-plug
"https://github.com/junegunn/vim-plug

"--------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"--------------

call plug#begin()
"    Plug 'morhetz/gruvbox'
     Plug 'preservim/nerdtree'
     "plugin for react
     Plug 'mxw/vim-jsx'     
call plug#end()


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"colorscheme gruvbox
