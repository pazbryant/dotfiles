import subprocess

c.fonts.default_size = "10pt"
c.fonts.web.size.default = 15
c.fonts.default_family = "sans-serif"

c.fonts.web.family.serif = "serif"
c.fonts.web.family.fixed = "monospace"
c.fonts.web.family.cursive = "monospace"
c.fonts.web.family.fantasy = "monospace"
c.fonts.web.family.standard = "sans-serif"
c.fonts.web.family.sans_serif = "sans-serif"

# yank url to clipboard in obsidian format
config.bind("<y><o>", "yank inline [{title}]({url})")

# set dark mode as a default
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.darkmode.policy.images = "never"
config.set("colors.webpage.darkmode.enabled", False, "file://*")

# toggle dark mode
config.bind("<Ctrl+Shift+d>", "config-cycle colors.webpage.darkmode.enabled")

c.auto_save.session = True  # save tabs on quit/restart

# set in insert mode emacs key binds
config.bind("<Ctrl-p>", "fake-key <Up>", "insert")
config.bind("<Ctrl-e>", "fake-key <End>", "insert")
config.bind("<Ctrl-a>", "fake-key <Home>", "insert")
config.bind("<Ctrl-n>", "fake-key <Down>", "insert")
config.bind("<Ctrl-b>", "fake-key <Left>", "insert")
config.bind("<Ctrl-f>", "fake-key <Right>", "insert")
config.bind("<Ctrl-y>", "fake-key <Ctrl-v>", "insert")
config.bind("<Ctrl-d>", "fake-key <Delete>", "insert")
config.bind("<Ctrl-x><Ctrl-e>", "open-editor", "insert")
config.bind("<Mod1-b>", "fake-key <Ctrl-Left>", "insert")
config.bind("<Ctrl-h>", "fake-key <Backspace>", "insert")
config.bind("<Mod1-f>", "fake-key <Ctrl-Right>", "insert")
config.bind("<Mod1-d>", "fake-key <Ctrl-Delete>", "insert")
config.bind("<Ctrl-w>", "fake-key <Ctrl-Backspace>", "insert")
config.bind("<Ctrl-k>", "fake-key <Shift-End><Delete>", "insert")
config.bind("<Ctrl-u>", "fake-key <Shift-Home><Delete>", "insert")

# set default search engines
c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?q={}",
    "dg": "https://duckduckgo.com/?q={}",
    "gh": "https://github.com/search?q={}",
    "g": "https://www.google.com/search?q={}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "yt": "https://www.youtube.com/results?search_query={}",
}

# Set the page opened when a new empty tab is created
c.url.default_page = "about:blank"

# Set the page(s) opened when qutebrowser starts
c.url.start_pages = [
    "https://web.telegram.org/a/#7524611776https://web.telegram.org/a/#7524611776"
]  # :open -s opens all start pages


# set your preferred download folder
c.downloads.location.directory = "~/Downloads"

# set privacy settings
c.content.canvas_reading = True  # Block canvas fingerprinting
c.content.headers.do_not_track = True  # Send DNT header
c.content.autoplay = False  # Prevent autoplaying media
c.content.geolocation = False  # Disable geolocation by default
c.content.cookies.accept = "all"  # Allow 3rd-party cookies

# set adblock
c.content.blocking.enabled = True

# custom user css file. Modify web pages css
c.content.user_stylesheets = ["~/.config/qutebrowser/user.css"]


# ====================== xresources ======================= {{{
# taken from https://qutebrowser.org/doc/help/configuring.html
def read_xresources(prefix):
    """
    read settings from xresources
    """
    props = {}
    x = subprocess.run(["xrdb", "-query"], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split("\n")
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(":\t")
        props[prop] = value
    return props


xresources = read_xresources("*")

c.colors.statusbar.normal.bg = xresources["*.background"]
c.colors.statusbar.command.bg = xresources["*.background"]
c.colors.statusbar.command.fg = xresources["*.foreground"]
c.colors.statusbar.normal.fg = xresources["*.foreground"]

c.colors.tabs.bar.bg = xresources["*.background"]
c.colors.tabs.even.bg = xresources["*.color8"]
c.colors.tabs.odd.bg = xresources["*.color8"]
c.colors.tabs.even.fg = xresources["*.foreground"]
c.colors.tabs.odd.fg = xresources["*.foreground"]
c.colors.tabs.selected.even.fg = xresources["*.background"]
c.colors.tabs.selected.odd.fg = xresources["*.background"]
c.colors.tabs.selected.even.bg = xresources["*.cursorColor"]
c.colors.tabs.selected.odd.bg = xresources["*.cursorColor"]
c.colors.hints.bg = xresources["*.cursorColor"]
c.colors.hints.fg = xresources["*.foreground"]

# load the default configuration made using the ui ":set"
config.load_autoconfig()
