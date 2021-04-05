-- custom header
vim.g.dashboard_custom_header = vim.g.asc_head
-- search plugin
vim.g.dashboard_default_executive = 'fzf.vim'
vim.g.dashboard_session_directory = '~/.local/share/nvim/session'
-- dashboard sections
vim.g.dashboard_custom_section = {
    a = {description = {' new file          '}, command = 'DashboardNewFile'},
    b = {description = {' find file          '}, command = 'Telescope find_files'},
    c = {description = {' recently used files'}, command = 'Telescope oldfiles'},
    d = {description = {' load last session  '}, command = 'SessionLoad'},
    e = {description = {' find word          '}, command = 'Telescope live_grep'},
    f = {description = {' settings           '}, command = ':e ~/.config/nvim/init.vim'},
    g = {description = {' quit              '}, command = 'qa!'},
}
-- footer
vim.g.dashboard_custom_footer = {'made with   by channel-42'}
