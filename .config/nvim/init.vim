source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/colors.vim

" vim-airline (Status bar) settings
" let g:airline#extensions#tabline#enabled = 1
let g:airline_fonts=1

" vim-workspace
let g:workspace_autocreate = 1

" Standard Vim Settings
set mouse=a " Enable mouse support
set number relativenumber " Relative line numbers

" Theme
set termguicolors " More color support

let g:neodark#background = '#20202000'
colorscheme neodark

let g:airline_theme = "violet"

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
"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

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

nmap <F8> :TagbarToggle<CR>

nnoremap <C-/> :Commentary<CR>

