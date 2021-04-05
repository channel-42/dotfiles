"colorscheme
set background=dark
colorscheme tokyonight

"general hl settings
au ColorScheme * hi Normal ctermbg=None
au ColorScheme * hi VertSplit ctermbg=None ctermfg=9
au ColorScheme * hi SignColumn ctermbg=None
au ColorScheme * hi CursorLineNr ctermbg=None ctermfg=9
au ColorScheme * hi CursorLine ctermbg=0 ctermfg=None
au ColorScheme * hi Directory ctermbg=None ctermfg=1
au ColorScheme * hi EndOfBuffer ctermfg=9 ctermbg=None

"lsp virt text hl
au ColorScheme * hi! LspDiagnosticsDefaultError ctermfg=1
au ColorScheme * hi! LspDiagnosticsVirtualTextWarning ctermfg=3
au ColorScheme * hi! LspDiagnosticsDefaultWarning ctermfg=3

" floaterm lh
au ColorScheme * hi FloatermBorder ctermfg=9 ctermbg=None
au ColorScheme * hi Floaterm ctermbg=None

"debug
au ColorScheme * hi debugBreakpoint ctermbg=None ctermfg=red
au ColorScheme * hi debugPC ctermbg=None ctermfg=black ctermbg=5

" dashboard
au ColorScheme * hi DashboardHeader ctermbg=None ctermfg=9
au ColorScheme * hi DashboardCenter ctermbg=None ctermfg=3
au ColorScheme * hi DashboardShortcut ctermbg=None ctermfg=3
au ColorScheme * hi DashboardFooter ctermbg=None ctermfg=4

" nvim tree
au ColorScheme * hi NvimTreeFolderIcon ctermbg=None ctermfg=1
au ColorScheme * hi NvimTreeIndentMarker ctermbg=None ctermfg=1
au ColorScheme * hi NvimTreeExecFile ctermbg=None ctermfg=2
au ColorScheme * hi NvimTreePythonIcon ctermbg=None ctermfg=3
au ColorScheme * hi NvimTreeLicenseIcon ctermbg=None ctermfg=4
