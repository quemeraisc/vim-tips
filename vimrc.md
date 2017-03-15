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
