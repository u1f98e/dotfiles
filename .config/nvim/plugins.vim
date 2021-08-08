" vim-plug plugin loading
call plug#begin(stdpath('data') . '/vim-plugins')
Plug 'thaerkh/vim-workspace' " Session managment and undo hist

" Status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'pacha/vem-tabline' " Tabline
Plug 'skywind3000/vim-quickui' " Sick menus

" fzf (Fuzzy searching)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" coc (Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'

Plug 'majutsushi/tagbar' " Ctags browser
Plug 'ludovicchabant/vim-gutentags'

Plug 'godlygeek/tabular' " Alignment (:Tab)

Plug 'luochen1990/rainbow' " Parentheses colors
let g:rainbow_active = 1

Plug 'tpope/vim-sleuth' " Detect indentation
Plug 'yggdroot/indentline' " Indent Lines
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'AndrewRadev/linediff.vim' " Do a diff on two selections 
Plug 'tomtom/tcomment_vim' " Comments (gc)
Plug 'tpope/vim-unimpaired' " Some shortcuts
Plug 'svermeulen/vim-cutlass' " Dont cut with d
Plug 'svermeulen/vim-yoink' " Paste sync, history
let g:yoinkIncludeDeleteOperations=1

Plug 'KeitaNakamura/neodark.vim' " Theme

call plug#end()


