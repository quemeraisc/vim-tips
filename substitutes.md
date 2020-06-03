# Making some subsitutions

### Make one substitution :

`:s/src/dst/ `

Same subsitution for next occurence:

`n` goes to next occurence of the searched pattern, then `&` subsitutes that occurence.

### All at once :

`:%s/src/dst/g` will do the subst for all occurences across the whole file. a `c`, for confirm, flag is usually a good idea.
Likeso : `:%s/src/dst/gc`

### Now let's substitute 'else' with the previous pattern, here 'dst'
Let's search for our new pattern 'else'
`/else`
now, let's replace all occurences in the file with our previous substitute:
`g&` : It's a kind of magic ;)

