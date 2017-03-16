### A few useful things to have in .vimrc file :

Correct tabulation is important, and syntax 
```
 filetype plugin indent on
 set shiftwidth=4
 set softtabstop=4
 sest expandtab
 ``` 
 
 Know where you are in the file, using line numbering, and ruler
 ```
 set number
 set ruler
 ```
 
 Leader key is useful, by default it is set to \ which is hardly convenient, try space instead (\ is still available):
 ```
 map <SPACE> <leader>
 ```

### .vim/ directory
In .vim directory can be found all sorts of extras like colorscheme, syntax files or even plugins
Colorscheme are to be found in `$HOME/.vim/colors/`.

I like to use material.vim (http://equinusocio.github.io/material-theme/) as a generic colorscheme, and I just found pychimp.vim (Pratheek <pratheek.i@gmail.com>) for a minimal python colorscheme to which I appended support for python Todo.
