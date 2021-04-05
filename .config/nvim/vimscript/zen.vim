" goyo and limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:goyo_width = 130
let g:goyo_height = 80
let b:code = "no"

" Toggle Goyo and Limelight on and off
function! ToggleCoding()
    if exists("b:code") && b:code == "yes"
        let b:code = "no"
        Goyo!
        Limelight!
    else
        let b:code = "yes"
        Goyo
        Limelight
    endif
endfunction

" remove weird background change on exit 
function s:goyo_enter()
    hi! VertSplit guibg=None
    hi! StatusLineNC guifg= guibg=None
endfunction

function s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText ctermbg=none ctermfg=NONE 
    hi EndOfBuffer ctermbg=none
    hi LineNr ctermbg=none
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
