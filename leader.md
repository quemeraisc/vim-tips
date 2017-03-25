### leader, buffer, localleader
`<leader>` usually is set to `\` and applies globally.
It can be combined with `<buffer>` to make a 'local' usage, as in `:nnoremap <buffer> <leader>x dd` where `<leader>x` will only be applied to current buffer. 
Though this is ok, for most personal use, it is better practice to use `<localleader>` 
