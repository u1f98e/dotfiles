source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/colors.vim

" vim-airline (Status bar) settings
let g:airline#extensions#tabline#enabled = 1
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

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nnoremap <C-/> :Commentary<CR>

