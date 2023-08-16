# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

config.load_autoconfig(False)
config.set('colors.webpage.darkmode.enabled', False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

c.tabs.show = 'never' # options: always,never
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}
c.fonts.default_family = "JetBrains Mono Nerd Font"
c.fonts.default_size = '9pt'
c.fonts.completion.entry = '9pt "JetBrains Mono Nerd Font"'
c.fonts.debug_console = '9pt "JetBrains Mono Nerd Font"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '9pt "JetBrains Mono Nerd Font"'
c.zoom.default = '80'

config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
