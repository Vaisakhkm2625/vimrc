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
set omnifunc=javascriptcomplete#CompleteJS

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

nnoremap <leader>c <i><C-x><C-o><CR>

nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

tnoremap <Esc> <C-\><C-n>
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


filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
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
    
    "colorschemes
     Plug 'morhetz/gruvbox'

     
     Plug 'preservim/nerdtree'
    " Plug 'mxw/vim-jsx'              "plugin for react(working)     
     Plug 'godlygeek/tabular'         "plugin for vim-markdown(both)
     Plug 'plasticboy/vim-markdown'   "|-^
     "Plug 'Valloric/YouCompleteMe'   "you complete me plugin
     Plug 'maxboisvert/vim-simple-complete'
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
call plug#end()


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:UltiSnipsExpandTrigger="c-g"
let g:UltiSnipsExpandTrigger="<c-l>"

map <F8> :colorscheme gruvbox <cr>
map <F9> :colorscheme default <cr>

"colorscheme gruvbox


