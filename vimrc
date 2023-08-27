call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'luochen1990/rainbow'
Plug 'caizefeng/vasp.vim'
Plug 'preservim/nerdtree'

call plug#end()

" vim-plug config
let g:plug_window = 'topleft new'

" Nerd-Commenter config
let mapleader=','

" airline config
let g:airline_section_b = '%{strftime("\ %m/%d/%Y\ -\ %H:%M\ ")}'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" colorscheme config
set t_Co=256
colorscheme molokai

" rainbow config
let g:rainbow_active = 1


" NERDTree config 
nnoremap <C-t> :NERDTreeToggle<CR>

" file type
au BufRead,BufNewFile *.slurm set filetype=sh


set nu
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set viminfo='20,<1000
set hlsearch


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


let b:fortran_fixed_source=0
set ts=4
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set ignorecase
set smartcase

