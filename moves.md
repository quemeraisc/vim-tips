# Useful basic moves

### Basic moves in the current line :

* `w` goes to the begining of the next word, `b` goes to the begining of the previous word ; `3b` goes backward 3 words, begining of that word

* `fx` goes to next 'x' on the current line, `Fx` previous 'x'
* `tx` goes just before 'x', `Tx` goes backward after 'x'

### Basic moves to change line :
* `j` to next line, `k `to previous line ; `5j` forward 5 lines, `10k` backward 10 lines
* `nG` moves to line n

see [All_the_right_moves](http://vim.wikia.com/wiki/All_the_right_moves)

### Make changes:
Combining moves with change commands:

* `ct;` changes everything until next ';' works with any character.
* `cTc` changes everything from after previous 'c' to current position
* `cfe` changes everything from current to next 'e' included
* `cFe` same, backward, 'e' included

* `cis` replaces a whole paragraph from within


### Yank whatever 

* `yip` yanks a whole paragraph, could be a function 

# spliting and buffering
In order to set up a convenient environment, let's use split, for example:


# Focusing
### Change the focus with z :
* `z.` makes it centre,
* `zt` is for top, zb for bottom

* `*` moves to next occurence of current word, `#` to previous occurence
