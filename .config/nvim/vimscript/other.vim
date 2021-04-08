" dashboard header
let g:asc_head = [
\'       ██          ██             ', 
\'      ░██         ░░              ',
\'      ░██ ██    ██ ██ ██████████  ', 
\'   ██████░██   ░██░██░░██░░██░░██ ',
\'  ██░░░██░░██ ░██ ░██ ░██ ░██ ░██ ',
\' ░██  ░██ ░░████  ░██ ░██ ░██ ░██ ',
\' ░░██████  ░░██   ░██ ███ ░██ ░██ ',
\'                                  ',
\'   [ coding comfort with no gui ] ',
\]

" setup for indentline
let g:indentLine_fileTypeExclude = ['markdown', 'startify', 'man', 'dashboard']
"let g:indentLine_char = '¦'
let g:indentLine_char = '▏'
let g:indent_blankline_char_highlight_list = ['Comment']
let g:indent_blankline_show_first_indent_level = v:false

" Nvim tree
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_hide_dotfiles = 1

" termdebug setup
let g:termdebug_popup = 0
let g:termdebug_wide = 1

" setup for airline
let g:airline_section_b = '%{strftime("%a %d. %H:%M")}'
let g:airline_powerline_fonts = 1
let g:airline_theme  = 'minimalist'
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" vim rooter
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', '=src']
