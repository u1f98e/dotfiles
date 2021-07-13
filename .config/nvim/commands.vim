
" Ce / Change Edit: Closes the active buffer and opens a new one
:command! -nargs=1 -complete=file -bar Ce :bd | :e <args>
