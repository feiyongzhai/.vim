source $VIMRUNTIME/defaults.vim

" Keys
nnoremap Q :q<CR>
" 这个配置和 vim-rt-format 会冲突
nnoremap S :w<CR>
noremap Y "+y
"noremap ; :
"noremap : ;

let mapleader = ' '
nnoremap <leader>q :q<CR>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>ec :e $MYVIMRC<CR>
nnoremap <leader>ee :e ~/.emacs.d/init.el<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>s :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR && clear<CR>
nnoremap <leader>tn :tabnew<CR>

nnoremap <C-n> :NERDTreeToggle<CR>

" Settings
set incsearch
set ignorecase
set smartcase
set fileencodings=utf-8,gbk

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
" UI
"Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" note
Plug 'vimwiki/vimwiki'
" ime
Plug 'humiaozuzu/fcitx-status'
"Plug 'lilydjwg/fcitx.vim'
" 搜索增强
Plug 'osyo-manga/vim-anzu'
Plug 'preservim/nerdtree'
" 谷歌搜索
Plug 'szw/vim-g'
" 编辑增强
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" 中文帮助文档
Plug 'yianwillis/vimcdoc'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'feiyongzhai/vim-rt-format', { 'do': 'pip3 install autopep8' }
call plug#end()

let g:rtf_ctrl_enter = 0
" Enable formatting when leaving insert mode
let g:rtf_on_insert_leave = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

if has("gui_running")
	set guioptions-=T
	set guifont=Hack\ 12
	colorscheme desert
endif

" ===
" === vimwiki
" ===
let g:vimwiki_list = [{'path': '~/Nutstore Files/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ===
" === EasyAlign
" ===
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" ===
" === fzf
" ===
nn <C-p> :FZF<CR>
nn <leader>ff :FZF<CR>
nn <leader>fr :Rg<CR>
nn <leader>fg :GFiles<CR>
nn <leader>fh :History<CR>
nn <leader>fb :Buffers<CR>
nn <leader>fm :Marks<CR>
nn <leader>fw :Windows<CR>

" ===
" === anzu
" ===
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" ===
" === vim-g
" ===
nn <leader>gg :Google 
let g:vim_g_open_command = "xdg-open"

" ===
" === airline
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

set timeoutlen=1500
