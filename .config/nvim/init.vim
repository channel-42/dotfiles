let &packpath = &runtimepath
"source other configs
source ~/.config/nvim/plugins
source ~/.config/nvim/completion
source ~/.config/nvim/aesth
source ~/.config/nvim/bindings
source ~/.config/nvim/floatterm
source ~/.config/nvim/fzf
packadd termdebug
"settings
syntax on
set mouse=a
set hidden
set splitbelow 
set splitright
set number relativenumber
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set complete+=kspell
set nospell
set clipboard+=unnamedplus
set fillchars+=vert:\▏
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set updatetime=300
set conceallevel=0
" some plugin options
let g:indentLine_fileTypeExclude = ['markdown', 'startify', 'man']
"autocommands
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown
autocmd BufNewFile,BufRead *.ino set ft=c
autocmd FileType c,cpp,html,css,ino setlocal expandtab shiftwidth=2 softtabstop=2 cindent nofoldenable 
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 autoindent
autocmd VimLeave *.tex !bash $HOME/scripts/bash/texclear.sh %
autocmd VimLeave *.md :!pkill grip &
