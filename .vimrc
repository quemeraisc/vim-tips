"Folding {{{1
setlocal foldmethod=marker
setlocal foldlevel=0
noremap <SPACE> za
" }}}1

" Status Line {{{1
" lightline.vim {{{2
" set the runtime path to include plugins
" lightline provides a nice status bar
set rtp+=~/.vim/lightline.vim-master
"}}}2
set laststatus=2
set noshowmode
" }}}1

" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Plugin 'ascenator/L9', {'name': 'newL9'}

syntax on
colorscheme material
filetype plugin indent on
"Some settings{{{1
set encoding=utf-8
set relativenumber
set number
set cursorline
"set ruler "I guess I don't need that since I use airline
set noswapfile
set showcmd
set hlsearch
set path+=**
set wildmenu
set shiftwidth=4
set softtabstop=4
set expandtab
set splitbelow
set splitright
" }}}1
" Leader Cmds {{{1
"Leader key now becomes , default was \
map , <leader>
"jk is now escape. If needed type j wait type k
inoremap jk <ESC>
"Highlight last inserted text
nnoremap gV `[v`]
"quickly edit vimrc and source it {{{2
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>oh :split $HOME/<cr>
nnoremap <leader>oa :split $HOME/pyPack/Audit/<cr>:res -15<cr>
nnoremap <leader>eA :vsplit $HOME/ToolBox/scripts/spawn/spawnAudit.sh<cr>
"}}}2
"completion shortcuts {{{2
inoremap <TAB> <C-X><C-N>
"}}}2
"move between splits {{{2
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"}}}2
" }}}1

"Language specifics {{{1
"specifics for editing python files {{{2
"autocmd FileType python setlocal foldmethod=indent foldcolumn=4
augroup PythonFile
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>cc O"""<esc>}o"""<esc>
    autocmd FileType python set omnifunc=pythoncomlete#Complete
    autocmd FileType python set colorcolumn=80
    autocmd FileType python highlight ColorColumn ctermbg=8
    autocmd FileType python set textwidth=79
augroup END
" }}}2

"specifics for editing javascript files {{{2
augroup JavaScriptFile
    autocmd!
    autocmd FileType javascript setlocal expandtab shiftwidth=6 softtabstop=4
    "autocmd FileType javascript setlocal foldmethod=indent foldcolumn=4
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END
" }}}2

"specifics for editing html files {{{2
augroup htmlFile
    autocmd!
    autocmd BufNewFile *.html 0r ~/.vim/templates/html.html
    autocmd BufWritePre,BufRead *.html setlocal nowrap
augroup END
"}}}2

"regular txt files {{{2
augroup txtFile
    autocmd!
    autocmd BufNewFile *.txt :write
    autocmd BufNewFile,BufRead *.txt setlocal spell
augroup END
"}}}2
"
"any sort of files :) {{{2
autocmd FileType * nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
autocmd FileType * nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"}}}2
"}}}1
