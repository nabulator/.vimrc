" exuberant ctags
set tags=./tags,./TAGS,tags;/,TAGS;/

" enable hybrid numbers
set nu rnu

" Returns the list of available color schemes
function! GetColorSchemes()
   return uniq(sort(map(
   \  globpath(&runtimepath, "colors/*.vim", 0, 1),
   \  'fnamemodify(v:val, ":t:r")'
   \)))
endfunction

" so ubuntu20 doesn't have a rand() function in their vim patch sooo...
function! Randi()
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

" set that random color scheme
let my_colors = GetColorSchemes()
execute 'colo' my_colors[Randi() % len(my_colors)]


