" Keybinds """"""""""""""""""""""""""""

" Insert blank lines (Enter)
nnoremap <Enter> O<ESC>j
nnoremap <S-Enter> o<ESC>k

" Move lines up or down (Alt-j/k)
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Show buffer list (\b)
nnoremap <Leader>b :ls<CR>:b<Space>

" Switch buffers the old fashioned way
  " nnoremap <Tab> :bnext<CR>
  " nnoremap <S-Tab> :bprevious<CR>
" Buffer commands to make vem tabline work properly
nmap <leader>h <Plug>vem_move_buffer_left-
nmap <leader>l <Plug>vem_move_buffer_right-
nmap <S-Tab> <Plug>vem_prev_buffer-
nmap <Tab> <Plug>vem_next_buffer-
nmap <leader>x <Plug>vem_delete_buffer-

" Vem tab position maps
nnoremap <leader>1 :1tabnext<CR>
nnoremap <leader>2 :2tabnext<CR>
nnoremap <leader>3 :3tabnext<CR>
nnoremap <leader>4 :4tabnext<CR>
nnoremap <leader>5 :5tabnext<CR>
nnoremap <leader>6 :6tabnext<CR>
nnoremap <leader>7 :7tabnext<CR>
nnoremap <leader>8 :8tabnext<CR>
nnoremap <leader>9 :9tabnext<CR>

" When indenting text in visual mode, don't deselect after one indent
vnoremap < <gv
vnoremap > >gv

" diffput and get for only one line, normal blocks are rebound to shift p or o
nnoremap <silent> dp V:diffput<cr>
nnoremap <silent> do V:diffget<cr>
nnoremap <silent> dP :diffput<cr>
nnoremap <silent> dO :diffget<cr>

" Delete whole line on Shift-D
nnoremap <S-d> 0D

" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

" Fzf alt stuff
if has('nvim')
  tnoremap <a-a> <esc>a
  tnoremap <a-b> <esc>b
  tnoremap <a-d> <esc>d
  tnoremap <a-f> <esc>f
endif

" Cutlass rebinds, make x cut instead of d
nnoremap x d
xnoremap x d

nnoremap xx dd
nnoremap X D
