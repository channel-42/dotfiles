vim.cmd('set termguicolors')
vim.cmd('set background=dark')
vim.cmd('colorscheme tokyonight')

-- colors
local colors = {
    color0=       '#1d1f22',
    color8=       '#323b3e',
    color1=       '#f8818e',
    color9=       '#fb3d66',
    color2=       '#7b9679',
    color10=      '#6d8c63',
    color3=       '#bf946b',
    color11=      '#e4cd7b',
    color4=       '#8b9eb2',
    color12=      '#b0ecee',
    color5=       '#796e7f',
    color13=      '#cdafd9',
    color6=       '#7b8e93',
    color14=      '#556468',
    color7=       '#b3bec1',
    color15=      '#f7f8f8',
}

--[[
local colors = {
    bg=     '#141022',
    red=     '#FF5555',
    green=     '#50FA7B',
    yellow=     '#F1FA8C',
    orange=    '#F4F99D',
    blue=     '#BD93F9',
    violet=    '#CAA9FA',
    magenta=     '#FF79C6',
    darkblue=    '#7957B9',
    cyan=     '#8BE9FD',
    fg=    '#E6E6E6',
}
]]--

-- general
vim.cmd('au ColorScheme * hi Normal ctermbg=None gui=None guibg=None')
vim.cmd('au ColorScheme * hi SignColumn ctermbg=None gui=None guibg=None')
vim.cmd('au ColorScheme * hi NonText ctermbg=None guibg=None')
vim.cmd('au ColorScheme * hi VertSplit cterm=None guibg=None guifg='.. colors.color8)
vim.cmd('au ColorScheme * hi CursorLineNr cterm=None guibg=None ctermfg=5 guifg='.. colors.color9)
vim.cmd('au ColorScheme * hi CursorLine ctermbg=0 ctermfg=None guifg=None guibg=' .. colors.color0)
vim.cmd('au ColorScheme * hi EndOfBuffer ctermfg=magenta guibg=None guifg='.. colors.color8)
vim.cmd('au ColorScheme * hi StatusLine guifg=None guibg=None')
vim.cmd('au ColorScheme * hi StatusLineNC guibg=None')

--git signs
vim.cmd('au ColorScheme * hi GitSignsAdd guibg=None guifg='.. colors.color2)
vim.cmd('au ColorScheme * hi GitSignsChange guibg=None guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi GitSignsDelete guibg=None guifg='.. colors.color1)

-- lsp virt text hl
vim.cmd('au ColorScheme * hi! LspDiagnosticsDefaultError ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi! LspDiagnosticsVirtualTextWarning ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi! LspDiagnosticsDefaultWarning ctermfg=3 guifg='.. colors.color3)

-- floaterm lh
vim.cmd('au ColorScheme * hi FloatermBorder ctermfg=magenta ctermbg=None guibg=None guifg='.. colors.color9)
vim.cmd('au ColorScheme * hi Floaterm ctermbg=None guibg=None')

-- debug
vim.cmd('au ColorScheme * hi debugBreakpoint ctermbg=None ctermfg=red guibg=None guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi debugPC ctermfg=black ctermbg=5 guifg='.. colors.color0 .. ' guibg='.. colors.color5)

-- dashboard
vim.cmd('au ColorScheme * hi DashboardHeader cterm=None guibg=None ctermfg=5 guifg='.. colors.color9)
vim.cmd('au ColorScheme * hi DashboardCenter cterm=None guibg=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi DashboardShortcut cterm=None guibg=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi DashboardFooter cterm=None guibg=None ctermfg=2 guifg=' .. colors.color2)

-- nvim tree
vim.cmd('au ColorScheme * hi NvimTreeFolderIcon ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NvimTreeIndentMarker ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color8)
vim.cmd('au ColorScheme * hi NvimTreeExecFile ctermbg=None guibg=None ctermfg=2 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi NvimTreePythonIcon ctermbg=None guibg=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi NvimTreeLicenseIcon ctermbg=None guibg=None ctermfg=4')
vim.cmd('au ColorScheme * hi NvimTreeFolderName ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NvimTreeEmptyFolderName ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color6)
vim.cmd('au ColorScheme * hi NvimTreeRootFolder ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color9)

-- neogit
vim.cmd('au ColorScheme * hi NeogitDiffAdd cterm=None guibg=None ctermfg=2 guifg='.. colors.color2)
vim.cmd('au ColorScheme * hi NeogitDiffDelete cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitDiffContext cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitHunkHeader cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitHunkHeaderHighlight cterm=None guibg=None ctermfg=6 guifg='.. colors.color6)
