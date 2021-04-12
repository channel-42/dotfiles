command! Format execute 'lua vim.lsp.buf.formatting()'
"Bindings

" space is leader
map <Space> <Leader>
map <Leader>sb :Telescope file_browser<CR>

" register leader key
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" some defaults
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆', " ": 'SPC'}
let g:which_key_map =  {}
let g:which_key_sep = '→'

let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0
let g:which_key_timeout = 250

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" first layer
let g:which_key_map['z'] = [ ':call ToggleCoding()' , 'zen' ]
let g:which_key_map['H'] = [ ':Dashboard', 'home screen' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle', 'explorer' ]
let g:which_key_map['?'] = [ ':NvimTreeFindFile', 'find current file' ]
let g:which_key_map['r'] = [ ':FloatermNew ranger', 'ranger' ]
let g:which_key_map['M'] = [ ':call MaximizeToggle()', 'maximize buffer' ]
let g:which_key_map['G'] = [ 'gf', 'goto file' ]
let g:which_key_map['F'] = [ 'Format', 'format code' ]
let g:which_key_map[' '] = [ 'za', 'toggle fold' ]

" nested bindings

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 't' : [':FloatermNew lazygit', 'lazygit'],
      \ 'g' : [':Neogit', 'status'],
      \ 'l' : [':Neogit log', 'log'],
      \ 'c' : [':Neogit commit', 'commit'],
      \ 'r' : {
      \ 'name' : '+remote',
        \ 'p' : [':Neogit push', 'push'],
        \ 'P' : [':Neogit pull', 'pull'],
      \ },
      \ 's' : {
      \ 'name' : '+stage',
        \ 'h' : [':Gitsigns stage_bunk', 'stage hunk'],
        \ 'a' : [':Gitsigns stage_buffer', 'stage buffer'],
        \ 'u' : [':Gitsigns undo_stage_bunk', 'unstage hunk'],
      \ },
      \ 'b' : [':Gitsigns blame_line', 'blame'],
      \ 'p' : [':Gitsigns preview_hunk', 'preview hunk'],
      \ 'i' : [':Gitsigns toggle_current_line_blame', 'toggle blame'],
      \ 'd' : [':Gitsigns toggle_signs', 'toggle signs'],
      \ }

" S is for Session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 's' : [':SessionSave', 'save session'],
      \ 'l' : [':SessionLoad', 'load Session'],
      \ }

" s is for search 
let g:which_key_map.s = {
    \ 'name': '+search',
    \ 'f': [':Telescope find_files', 'files'],
    \ 'l': [':Telescope live_grep', 'lines'],
    \ 'h': [':Telescope oldfiles', 'history'],
    \ 'b': [':Telescope file_browser', 'buffers'],
    \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : [':FloatermNew --wintype=normal --height=10', 'split'],
      \ 'f' : [':FloatermNew', 'floating'],
      \ 'g' : [':FloatermNew lazygit', 'lazygit'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : [':BufferClose', 'delete-buffer'],
      \ 'n' : ['bnext', 'next-buffer'],
      \ 'p' : ['bprevious', 'previous-buffer'],
      \ 'm' : [ ':call MaximizeToggle()', 'maximize' ],
      \ '?' : ['Buffers', 'fzf-buffer'],
      \ }
" l is for lsp 
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'i' : [ 'LspInfo', 'show lsp info' ],
      \ 's' : {
        \ 'name' : '+stop',
        \ '1': [':call v:lua.StopLsp(1)', 'client 1'],
        \ '2': [':call v:lua.StopLsp(2)', 'client 2'],
        \ '3': [':call v:lua.StopLsp(3)', 'client 3'],
        \ '4': [':call v:lua.StopLsp(3)', 'client 4'],
        \ },
    \ 'S' : {
        \ 'name' : '+start',
        \ '1': [':call v:lua.StartLsp(1)', 'client 1'],
        \ '2': [':call v:lua.StartLsp(2)', 'client 2'],
        \ '3': [':call v:lua.StartLsp(3)', 'client 3'],
        \ },
      \ }

" c is for compile, WIP
let g:which_key_map.c = {
      \ 'name' : '+compile' ,
      \ 'c' : [':w! \|:silent !$HOME/scripts/bash/compiler.sh <c-r>%<CR><C-l>', 'compiler script'],
      \ 'm' : [':w! \|:silent !$HOME/scripts/bash/make.sh <c-r>%<CR><C-l>', 'make script'],
      \ 'v' : [':silent !$HOME/scripts/bash/opout.sh <c-r>%<CR><C-l>', 'view output'],
      \ }
" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['Break', 'add breakpoint'],
      \ }

" OTHER BINDINGS (partially) NOT SHOWN IN WHICH_KEY
" autosave/compile
nnoremap <S-s> :w! \|:silent !$HOME/scripts/bash/compiler.sh <c-r>%<CR><C-l> 
nnoremap <S-m> :w! \|:silent !$HOME/scripts/bash/make.sh <c-r>%<CR><C-l> 

" completion navigation
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

"show lsp hover info 
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

"spellcheck suggestions
inoremap <silent> <C-c> <C-x><C-s>

"Better tabbing
vnoremap < <gv
vnoremap > >gv

"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <M-m>     :call MaximizeToggle()<CR>

" Use alt + hjkl to resize windows, r to swap buffers
nnoremap <M-j>    :resize -5<CR>
nnoremap <M-k>    :resize +5<CR>
nnoremap <M-h>    :vertical resize -5<CR>
nnoremap <M-l>    :vertical resize +5<CR>
nnoremap <M-r>    :wincmd r<CR>

" stop lsp server
lua <<EOF
function _G.StopLsp(id)
    vim.lsp.stop_client(id)
end
function _G.StartLsp(id)
    vim.lsp.start_client(id)
end
EOF
"maximize toggle function -> Move to somewhere else !
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction
