
" Ce / Change Edit: Closes the active buffer and opens a new one
:command! -nargs=1 -complete=file -bar Ce :bd | :e <args>

" Tabe / Tab end: Aligns the last nonwhitespace characters in a line
:command! -range Tabe :'<,'>Tabularize /\s\S*$/

" Sorte / Sort end: Sorts rows based on the last word in a row
:command! -range Sorte :'<,'>sort /\v\s*\S+\s*/
:command! -range -bar OrgVars Tabe <bar> Sorte

:command! Makesim :make -j2 SIMULATOR=1 DEVELOPER=1


