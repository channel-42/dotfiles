set nocompatible              " be iMproved, required
filetype off                  " required

set ignorecase
set smartcase
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" all plugin
Plugin 'gabrielelana/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-startify'
Plugin 'mhartington/oceanic-next'
Plugin 'Rigellute/shades-of-purple.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()        " enable this line after the installation of glaive
filetype plugin indent on    " required

" custom setting
syntax on
set mouse=a
set number
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set guioptions=
syntax on

" indent for global
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" indent for special file
autocmd FileType c,cpp setlocal expandtab shiftwidth=2 softtabstop=2 cindent 
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 autoindent
" setup for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers =  {
  \ 'c' : ['re!\w{2}'],
  \ 'cpp' : ['re!\w{2}'],
  \ 'python' : ['re!\w{2}'],
  \ }

" setup for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:markdown_enable_spell_checking = 0
" autoformat
augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END
" use google style for clang-format
Glaive codefmt clang_format_style='google'

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <silent> <F5> : NERDTreeToggle<CR>
nnoremap <S-s> :w! \|:silent !/home/lukas/scripts/bash/compiler.sh <c-r>%<CR><C-l> 
nnoremap <silent> <F4> :silent !/home/lukas/scripts/bash/opout.sh <c-r>%<CR><C-l> 
nnoremap <silent> <C-f> :call ToggleCoding()<CR>

" setup for gruvbox
"set t_Co=256
set background=dark
colorscheme shades_of_purple
"":h startify-options
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=none ctermfg=NONE 
hi EndOfBuffer ctermbg=none
hi LineNr ctermbg=none
" let g:gruvbox_contrast_dark = 'soft'

" setup for goyo & limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:goyo_width = 120
let g:goyo_height = 95
let b:code = "no"
"Toggle Goyo and Limelight on and off
function! ToggleCoding()
    if exists("b:code") && b:code == "yes"
        let b:code = "no"
        Goyo!
        Limelight!
    else
        let b:code= "yes"
        Goyo
        Limelight
    endif
endfunction
"remove weird background change on exit 
function s:goyo_enter()
    hi! VertSplit guibg=NONE
endfunction
function s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText ctermbg=none ctermfg=NONE 
    hi EndOfBuffer ctermbg=none
    hi LineNr ctermbg=none
endfunction


autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
    

"startify options
let g:header_ascii = [
            \ ' =================     ===============     ===============   ========  ======== ',
            \ ' \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ',
            \ ' ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ',
            \ ' || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ',
            \ ' ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ',
            \ ' || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ',
            \ ' ||. . ||   ||-''  || ||  `-||   || . .|| ||. . ||   ||-''  || ||  `|\_ . .|. .|| ',
            \ ' || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ',
            \ ' ||_-'' ||  .|/    || ||    \|.  || `-_|| ||_-'' ||  .|/    || ||   | \  / |-_.|| ',
            \ ' ||    ||_-''      || ||      `-_||    || ||    ||_-''      || ||   | \  / |  `|| ',
            \ ' ||    `''         || ||         `''    || ||    `''         || ||   | \  / |   || ',
            \ ' ||            .==='' `===.         .===''.`===.         .==='' /==. |  \/  |   || ',
            \ ' ||         .==''   \_|-_ `===. .===''   _|_   `===. .==='' _-|/   `==  \/  |   || ',
            \ ' ||      .==''    _-''    `-_  `=''    _-''   `-_    `=''  _-''   `-_  /|  \/  |   || ',
            \ ' ||   .==''    _-''          `-__\._-''         `-_./__-''         `'' |. /|  |   || ',
            \ ' ||.==''    _-''                                                     `'' |  /==.|| ',
            \ ' ==''    _-''                                                            \/   `== ',
            \ ' \   _-''                                                                `-_   / ',
            \ '  `''                                                                      ``''  ',	    
            \ ]

let g:startify_custom_header = startify#center(g:header_ascii)
" setup for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:vim_markdown_folding_disabled = 1
" setup for tagbar
nmap <F8> :TagbarToggle<CR>
" setup for indent line
let g:indentLine_char = '│'
set tags=./tags,tags;$HOME

"source ~/cscope_maps.vim
