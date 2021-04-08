" TODO:
" - centralize color config for all plugins
" - vim-rooter not working when opening files from dashboard
" - decide if cterm colors will be kept
" - clean up configs some more (comments, formatting)

let &packpath = &runtimepath

" SOURCE CONFIGS

" vim script files
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/vimscript/bindings.vim
source ~/.config/nvim/vimscript/lsp.vim
source ~/.config/nvim/vimscript/fzf.vim
source ~/.config/nvim/vimscript/floatterm.vim
source ~/.config/nvim/vimscript/zen.vim
source ~/.config/nvim/vimscript/other.vim

" lua files
luafile ~/.config/nvim/luafiles/colors.lua
luafile ~/.config/nvim/luafiles/compe.lua
luafile ~/.config/nvim/luafiles/dashboard.lua
luafile ~/.config/nvim/luafiles/completion.lua
luafile ~/.config/nvim/luafiles/nvimtree.lua
luafile ~/.config/nvim/luafiles/galaxy.lua
luafile ~/.config/nvim/luafiles/neogit.lua
luafile ~/.config/nvim/luafiles/telescope.lua
luafile ~/.config/nvim/luafiles/bufferline.lua

" add debugging
packadd termdebug

" general settings
syntax enable
set mouse=a
set hidden
set splitbelow 
set splitright
set number relativenumber
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set complete+=kspell
set termguicolors
set nospell
set clipboard+=unnamedplus
" versplit char
set fillchars+=vert:\▏
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set updatetime=300
set conceallevel=0
set shortmess+=c
set tags=./tags,tags;$HOME
set timeout 

" change this for which-key delay
" also change g:which_key_timeout 
" in vimscript/bindings.vim
set timeoutlen=250

" AUTOCOMMANDS
" make dahsboard look clean (toggle off tab- and statusbar as well as EOB
" tilde '~'
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
autocmd FileType dashboard set fillchars+=eob:\ | autocmd WinLeave <buffer> set fillchars+=vert:\▏,eob:\~
autocmd FileType dashboard set laststatus=0 ruler | autocmd WinLeave <buffer> set laststatus=2 ruler

" other autocommands
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown
autocmd BufNewFile,BufRead *.ino set ft=c
autocmd FileType c,cpp,html,css,ino setlocal expandtab shiftwidth=2 softtabstop=2 cindent nofoldenable 
autocmd FileType tex setlocal tw=100
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 autoindent
autocmd VimLeave *.tex !bash $HOME/scripts/bash/texclear.sh %
autocmd VimLeave *.md :!pkill grip &
