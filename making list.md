### Inspired by:
[making a list, wikia vimtip](http://vim.wikia.com/wiki/VimTip971)

Basic usage of range and put
```
:for i in range(1, 10) | put = 'address['.i.'] 10.0.0.'.i | endfor
```
will render :
```
address[1] 10.0.0.1
address[2] 10.0.0.2
address[3] 10.0.0.3
address[4] 10.0.0.4
address[5] 10.0.0.5
address[6] 10.0.0.6
address[7] 10.0.0.7
address[8] 10.0.0.8
address[9] 10.0.0.9
address[10] 10.0.0.10
```
