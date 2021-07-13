" vim-plug plugin loading
call plug#begin(stdpath('data') . '/vim-plugins')
" Plug 'majutsushi/tagbar' "

Plug 'thaerkh/vim-workspace' " Session managment and undo hist

" Status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'pacha/vem-tabline' " Tabline

" fzf (Fuzzy searching)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" coc (Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

Plug 'majutsushi/tagbar' " Ctags browser
Plug 'ludovicchabant/vim-gutentags'

Plug 'godlygeek/tabular' " Alignment (:Tab)

Plug 'liuchengxu/vim-which-key'
" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

Plug 'luochen1990/rainbow' " Parentheses colors
let g:rainbow_active = 1

Plug 'tpope/vim-sleuth' " Detect indentation
Plug 'yggdroot/indentline' " Indent Lines
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'AndrewRadev/linediff.vim' " Do a diff on two selections
Plug 'tomtom/tcomment_vim' " Comments

Plug 'skywind3000/vim-quickui' " Sick menus

Plug 'KeitaNakamura/neodark.vim'

call plug#end()


