# CHANNEL-42's QUTEBROWSER CONFIGS
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# remove lsp warnings and errors {{{
from qutebrowser.api import interceptor
from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer
config: ConfigAPI = config
c: ConfigContainer = c
# }}}

# ==== colorscheme ====== {{{

c.content.user_stylesheets = ['~/.config/qutebrowser/css/'
                              'apprentice-all-sites.css']

base00 = "#1d1f21"
base08 = "#323b3e"
base01 = "#f8818e"
base09 = "#fb3d66"
base02 = "#7b9679"
base0A = "#6d8c63"
base03 = "#bf946b"
base0B = "#e4cd7b"
base04 = "#8b9eb2"
base0C = "#b0ecee"
base05 = "#796e7f"
base0D = "#cdafd9"
base06 = "#7b8e93"
base0E = "#556468"
base07 = "#b3bec1"
base0F = "#f7f8f8"

highlight = "#fb3d66"
bgalt = "#292c2f"

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = base01

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = base00

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = base00

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base09

# Background color of the completion widget category headers.
c.colors.completion.category.bg = bgalt 

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = base00

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = base00

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = base05

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = base01

# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = base01

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = base01

# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = base05

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = base03

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = base05

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = base00

# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = base01

# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = base04

# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = base00

# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg = base05

# Background color of the
# context menu’s selected item.
c.colors.contextmenu.selected.bg = base01

# Foreground color of the context menu’s selected item.
c.colors.contextmenu.selected.fg = base05

# Background color for the download bar.
c.colors.downloads.bar.bg = base00

# Color gradient start for download text.
c.colors.downloads.start.fg = base00

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = base0D

# Color gradient end for download text.
c.colors.downloads.stop.fg = base00

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = base0C

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = base08

# Font color for hints.
c.colors.hints.fg = base00

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = base0A

# Font color for the matched part of hints.
c.colors.hints.match.fg = base05

# Text color for the keyhint widget.
c.colors.keyhint.fg = base05

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base05

# Background color of the keyhint widget.
c.colors.keyhint.bg = base00

# Foreground color of an error message.
c.colors.messages.error.fg = base00

# Background color of an error message.
c.colors.messages.error.bg = base08

# Border color of an error message.
c.colors.messages.error.border = base08

# Foreground color of a warning message.
c.colors.messages.warning.fg = base00

# Background color of a warning message.
c.colors.messages.warning.bg = base0E

# Border color of a warning message.
c.colors.messages.warning.border = base0E

# Foreground color of an info message.
c.colors.messages.info.fg = base05

# Background color of an info message.
c.colors.messages.info.bg = base00

# Border color of an info message.
c.colors.messages.info.border = base00

# Foreground color for prompts.
c.colors.prompts.fg = base05

# Border used around UI elements in prompts.
c.colors.prompts.border = base00

# Background color for prompts.
c.colors.prompts.bg = base00

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = base01

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = base05

# Background color of the statusbar.
c.colors.statusbar.normal.bg = base00

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = base0C

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = bgalt

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = base0A

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = base00

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base0E

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = base00

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = base04

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = bgalt

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = base0E

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = bgalt 

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = base0D

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = base00

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = base0D

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = base00

# Background color of the progress bar.
c.colors.statusbar.progress.bg = base0D

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = base05

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = base08

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = base09

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = base0B

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = base0B

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = base0E

# Background color of the tab bar.
c.colors.tabs.bar.bg = base00

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = base01

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = base09

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = base03

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = base05

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = base00

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = base05

# Background color of unselected even tabs.
c.colors.tabs.even.bg = base00

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = base0B

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = base00

# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = base0B

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = base00

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = base02

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = base05

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = base02

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = base05

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = base05

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = highlight 

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = base05

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = highlight 

# Background color for webpages if unset (or empty to use the theme's
# color).
c.colors.webpage.bg = base00
# }}}

# ==== general ====== {{{
config.load_autoconfig(False)
c.downloads.location.directory = '~/Downloads'
c.url.searchengines = {'DEFAULT': 'https://searx.prvcy.eu/?q={}',
                       'am': 'https://www.amazon.com/s?k={}',
                       'gw': 'https://wiki.gentoo.org/?search={}',
                       'aw': 'https://wiki.archlinux.org/?search={}',
                       'goog': 'https://www.google.com/search?q={}',
                       're': 'https://www.reddit.com/r/{}',
                       'wiki': 'https://en.wikipedia.org/wiki/{}',
                       'yt': 'https://www.youtube.com/results?search_query={}',
                       'odd': 'https://odysee.com/$/search?q={}'}

c.scrolling.smooth = True
c.tabs.padding = {'bottom': 5, 'left': 5, 'right': 5, 'top': 5}
c.url.start_pages = ["~/.config/startpage/index.html"]
c.url.default_page = "~/.config/startpage/index.html"

# }}}

# ==== yt add-blocking ====== {{{
# taken from Gavin Freeborn
# https://odysee.com/@GavinFreeborn:d/why-i-use-qutebrowser-and-how-i:3


def ytfilter(info: interceptor.Request):
    url = info.request_url
    if(url.host() == "www.youtube.com"
       and url.path() == "/get_video_info"
       and "&adformat" in url.query()
       ):
        info.block()


interceptor.register(ytfilter)
# }}}

# ==== fonts ====== {{{
c.fonts.default_family = '"FiraCode Nerd Font"'
c.fonts.default_size = '13pt'
c.fonts.completion.entry = '13pt "FiraCode Nerd Font"'
c.fonts.debug_console = '13pt "FiraCode Nerd Font"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '13pt "FiraCode Nerd Font"'
# }}}

# ==== bindings ====== {{{
config.bind(
    ',ap', 'config-cycle content.user_stylesheets '
    '~/.config/qutebrowser/css/apprentice-all-sites.css ""')
config.bind(
    ',sl', 'config-cycle content.user_stylesheets '
    '~/.config/qutebrowser/css/solarized-light-all-sites.css ""')
config.bind(
    ',sd', 'config-cycle content.user_stylesheets '
    '~/.config/qutebrowser/css/solarized-dark-all-sites.css ""')
config.bind('xb', 'config-cycle statusbar.show never always')
config.bind('xt', 'config-cycle tabs.show never always ')
config.bind('xx', 'config-cycle statusbar.show never always;; config-cycle tabs.show never always ')
config.bind('j', 'run-with-count 3 scroll down')
config.bind('k', 'run-with-count 3 scroll up')
# }}}

# ==== useragent, js, images ====== {{{

# Type: String
# Valid values:
#   - all
#   - no-3rdparty
#   - no-unknown-3rdparty
#   - never

config.set('content.cookies.accept', 'no-3rdparty', 'chrome-devtools://*')
config.set('content.cookies.accept', 'no-3rdparty', 'devtools://*')

# Type: FormatString
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')
# }}}

# vim:fileencoding=utf-8:ft=python:foldmethod=marker
