source ~/.config/nvim/plugins.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/quick-ui.vim
source ~/.config/nvim/binds.vim
source ~/.config/nvim/macros.vim

" vim-airline (Status bar) settings
" let g:airline#extensions#tabline#enabled = 1
let g:airline_fonts=1
let g:airline#extensions#whitespace#enabled = 0

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

" Highlight colors
hi Search guibg='#777700'
hi Search guifg='#ffffff'
hi CursorLine guibg='#303030'
hi CursorColumn guibg='#353535'
set cursorline

" vim-workspace settings
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_session_disable_on_args = 1
let g:workspace_undodir=$HOME . '/.vim/undodir'
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0

" Fix doxygen comments in cpp and h files
au FileType c,cpp,h,hpp set comments-=:// | set comments +=://! | set comments +=://

" Use system clipboard
set clipboard=unnamedplus

