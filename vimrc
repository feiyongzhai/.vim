source $VIMRUNTIME/defaults.vim
"Key Tweaks
"exchange ; and :
nn ; :
nn : ;
nn Q :q<CR>
nn S :w<CR>

let mapleader = ' '
nn <leader>q :q<CR>
nn <leader>r :source $MYVIMRC<CR>
nn <leader>ec :e $MYVIMRC<CR>

set incsearch
set ignorecase
set smartcase

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'yianwillis/vimcdoc'
"Plug 'iamcco/markdown-preview.nvim'
call plug#end()

" ===
" === configs for vimwiki
" ===
let g:vimwiki_list = [{'path': '~/Nutstore Files/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ===
" === configs for fzf
" ===
nn <C-f> :Lines<CR>
nn <leader>ff :FZF<CR>
nn <leader>fr :Rg<CR>
nn <leader>fg :GFiles<CR>
nn <leader>fh :History<CR>
nn <leader>fb :Buffers<CR>
nn <leader>fl :Lines<CR>
nn <leader>fm :Marks<CR>
nn <leader>fw :Windows<CR>

"Mode Settings

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:
"参考链接：https://blog.csdn.net/mkosto/article/details/100700454

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

"let &t_SI = "\<Esc>]60;CursorShape=1\x7"
"let &t_SR = "\<Esc>]60;CursorShape=2\x7"
"let &t_EI = "\<Esc>]60;CursorShape=0\x7"
