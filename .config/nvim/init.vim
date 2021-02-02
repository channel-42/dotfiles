"set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/plugins
source ~/.config/nvim/aesth
source ~/.config/nvim/bindings

" custom setting
syntax on
set mouse=a
set number
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set nospell

set fillchars+=vert:\▏
" indent for global
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

"for markdown suffixes
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown
au BufNewFile,BufRead *.ino set ft=c

" indent for special file
autocmd FileType c,cpp,html,css,ino setlocal expandtab shiftwidth=2 softtabstop=2 cindent nofoldenable 
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 autoindent
autocmd VimLeave *.tex !bash $HOME/scripts/bash/texclear.sh %
autocmd VimLeave *.md :!pkill grip &

"coding stuff (autocomplete && syntax checking)
let g:diagnostic_virtual_text_prefix = ''
let g:diagnostic_enable_virtual_text = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'Neosnippet'
let g:completion_matching_smart_case = 1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_trigger_on_delete = 1

lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}

autocmd BufEnter * lua require'completion'.on_attach()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",  
  highlight = {
    enable = true,              
  },
}
EOF
