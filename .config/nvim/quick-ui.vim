" Styling
let g:quickui_border_style = 2
let g:quickui_color_scheme = 'papercol dark'

" Binds
nnoremap <F3> :call quickui#tools#preview_tag('')<cr>
nnoremap <Space> :call quickui#menu#open()<cr>
vnoremap <Space> :call quickui#menu#open()<cr>

" Menu ---------------------------------------
call quickui#menu#reset()

call quickui#menu#install('F&ile', [
            \ [ "Open Config Dir", 'e ~/.config/nvim/' ],
            \ [ "Close All", 'bufdo bd' ],
            \ [ "--", '' ],
            \ [ "E&xit", 'qa!' ],
            \ ])

call quickui#menu#install("&Edit", [
            \ [ "Organize &Variables", 'OrgVars' ],
            \ ])

call quickui#menu#install('&Find', [
            \ [ "&Buffers", 'Buffers' ],
            \ [ "Histor&y", 'History' ],
            \ [ "&Files", 'Files' ],
            \ [ "L&ines", 'BLines' ],
            \ [ "&Snippets", 'Snippets' ],
            \ [ "&Tags", 'Tags' ],
            \ [ "&Commands", 'Commands' ],
            \ ])

call quickui#menu#install("&Option", [
			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
                        \ ['Set &Word Wrap %{&wrap? "Off":"On"}', 'set wrap!'],
			\ ['Set Cursor &Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
			\ ['Set Cursor &Column %{&cursorcolumn? "Off":"On"}', 'set cursorcolumn!'],
			\ ['Toggle &Relative LN %{&relativenumber? "Off":"On"}', 'set relativenumber!'],
			\ ])

call quickui#menu#install("&Tools", [
			\ ])
