local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

local editNewFile     = [[<CMD>ene<CR>]]
local listRecentFiles = [[<CMD>Telescope oldfiles<CR>]]
local openFileBrowser = [[<CMD>Telescope file_browser<CR>]]
local loadLastSession = [[<CMD>SessionManager load_last_session<CR>]]
local findFiles       = [[<CMD>Telescope find_files<CR>]]
local liveGrep        = [[<CMD>Telescope live_grep<CR>]]
local searchBookmarks = [[<CMD>BookmarksListAll<CR><CMD>Telescope loclist<CR>]]
local editDotfiles    = [[<CMD>Telescope file_browser path=~/.config/<CR>]]
local quit            = [[<CMD>qa<CR>]]

dashboard.section.header.val = {
'╭╮╭┬─╮╭─╮┬  ┬┬╭┬╮',
'│││├┤ │ │╰┐┌╯││││',
'╯╰╯╰─╯╰─╯ ╰╯ ┴┴ ┴',
}

dashboard.section.buttons.val = {
  dashboard.button('o',  '  Edit new file', editNewFile),
  dashboard.button('rf', '  View recent files', listRecentFiles),
  dashboard.button('fb', '  Open file broswer', openFileBrowser),
  dashboard.button('sg', '  Resume last global session', loadLastSession),
  dashboard.button('ff', '  Find a file', findFiles),
  dashboard.button('fw', '  Search for regex', liveGrep),
  dashboard.button('bm', '  Search bookmarks', searchBookmarks),
  dashboard.button('df', '襁 Edit dotfiles',editDotfiles),
  dashboard.button('q',  '  Exit Neovim', quit)
}
alpha.setup(dashboard.config)
