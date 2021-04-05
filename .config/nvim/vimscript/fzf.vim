" extra bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" removing this break which-key delay for some reasom ?!
" maybe which-key only waits if a leader command is mapped
" eihter way, this is the same binding as defined with which-key
map <leader>b? :Buffers<CR>

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = {
    \'up':'~90%', 
    \'window': { 
        \'width': 0.8, 
        \'height': 0.8,
        \'yoffset':0.5,
        \'xoffset': 0.5, 
        \'highlight': 'DraculaPurple', 
        \'border': 'sharp' 
        \} 
    \}

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
" ucomment for ripgrep support
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg+':     ['bg', 'Normal'], 
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'DraculaPurple'],
  \ 'prompt':  ['fg', 'DraculaPurple'],
  \ 'pointer': ['fg', 'DraculaPurple'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"custom files command
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
