### A few useful things to have in .vimrc file :
Keeping vimrc tidy with fold. foldmethod to marker in vimrc
```
"Vim files specifics {{{1                                                                                                                                                                                         
augroup filetype_vim
    autocmd!
    autocmd filetype vim 
            \ set foldmethod=marker
            \ foldlevel=0
            \ shiftwidth=4
            \ softtabstop=4
            \ expandtab
augroup END
" }}}1
```

Correct tabulation is important, and syntax (included in previous part)
```
 filetype plugin indent on
 set shiftwidth=4
 set softtabstop=4
 set expandtab
 ``` 
 
 Interesting plugins:
 ```
 " Plugins {{{1                                                                                                                                                                                                    
call plug#begin('~/.vim/plugged')
" Status line
Plug 'itchyny/lightline.vim'
" Colorschemes
Plug 'Siphalor/vim-atomified'
" files access
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
" editing automation
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" Completion
Plug 'Valloric/YouCompleteMe'
call plug#end()
 ```
 Some general settings
 ```
 "Some settings----------------- {{{1
syntax on
set laststatus=2 
set noshowmode
set background=dark
set encoding=utf-8                                                                                                                                                                                                
set relativenumber 
set number 
set cursorline
set noswapfile
set showcmd
set incsearch
set hlsearch
set path+=** wildmenu
set backspace=indent,eol,start
"who needs a mouse in vi anyway
set mouse=
set autoindent
set visualbell
set clipboard=unnamedplus
```

 Leader key is useful, by default it is set to \ which is hardly convenient, try , instead (\ is still available):
 ```
 map , <leader>
 ```

Here is a neat way to allow moving around splits (might be better not to use that and learn the proper keys):
```
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
```

Quickly edit, source vimrc from anywhere
```
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
```

Autocmd depending on filetype
```
"Autocmd groups {{{1
" buffer {{{2
augroup Buffer_types
    autocmd!
    autocmd BufEnter *.txt set spell
    autocmd BufNewFile * :write
augroup END
"}}}2
"Python {{{2
augroup filetype_python
    autocmd!
    autocmd filetype python 
            \ set tabstop=4
            \  softtabstop=4
            \  shiftwidth=4
            "\  textwidth=4
            \  expandtab
            \  autoindent
    autocmd filetype python nnoremap <leader>py :!python %
    autocmd filetype python match ErrorMsg '\%>80v.\+'
augroup END
"}}}2
" Makefile {{{2
augroup filetype_make
    autocmd!
    autocmd filetype make 
        \ set noexpandtab
        \ set softtabstop=8
augroup END
"}}}2
" c {{{2
augroup filetype_c
    autocmd!
    "% is the current filename %:t:r is the current filename without extension
    autocmd filetype c nnoremap <leader>gc :!gcc % -o %:t:r
augroup END
"}}}2
"Web {{{2
augroup filetype_html_css_js
    autocmd!
    autocmd FileType html,css,js    
        \ set tabstop=2
        \ set softtabstop=2
        \ set shiftwidth=2
augroup END
"}}}2
"}}}1  
```

### .vim/ directory
In .vim directory can be found all sorts of extras like colorscheme, syntax files or even plugins
Colorscheme are to be found in `$HOME/.vim/colors/`.
