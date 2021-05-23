source $VIMRUNTIME/defaults.vim
"Key Tweaks
"exchange ; and :
nn ; :
nn : ;
nn Q :q<CR>
nn S :w<CR>

let mapleader = ' '
nnoremap <leader>q :q<CR>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>ec :e $MYVIMRC<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>s :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

set incsearch
set ignorecase
set smartcase
set fileencodings=utf-8,gbk

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'vimwiki/vimwiki'
Plug 'humiaozuzu/fcitx-status'
Plug 'osyo-manga/vim-anzu'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
highlight! link SignColumn LineNr
"highlight SignColumn guibg=darkgrey
"Plug 'liuchengxu/vim-which-key'
"Plug 'lilydjwg/fcitx.vim'
Plug 'szw/vim-g'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'yianwillis/vimcdoc'
"Plug 'iamcco/markdown-preview.nvim'
call plug#end()

if has("gui_running")
	set guioptions-=T
	set guifont=Hack\ 12
endif

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

" ===
" === configs for anzu
" ===
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" ===
" === configs for vim-g
" ===
nn <leader>gg :Google 
let g:vim_g_open_command = "firefox"

" ===
" === configs for airline
" ===
let g:airline_theme='jellybeans'
let g:airline#extensions#whitespace#enabled = 0

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
