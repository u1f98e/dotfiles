source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/colors.vim
source ~/.config/nvim/binds.vim
source ~/.config/nvim/quick-ui.vim

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

