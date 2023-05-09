-- Set the character encoding used inside vim.
vim.opt.encoding = 'utf-8'

-- Enables mouse support in Normal/Visual mode.
vim.opt.mouse = 'nv'

-- Let the command-line completion operates in an enhanced mode.
vim.opt.wildmenu = true

-- Not show mode since we have a plugin to do it.
vim.opt.showmode = false

-- Use the system clipboard.
vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })

-- Avoid creating a swapfile.
vim.opt.swapfile = false

-- When a file has been detected to have been changed outside of Vim and
-- it has not been changed inside of Vim, automatically read it again.
vim.opt.autoread = true

-- Show "invisible" characters.
vim.opt.list = true
vim.opt.listchars = { tab = '➜·', trail = '·' }

-- Make backspace behave more reasonably.
vim.opt.backspace = 'indent,eol,start'

-- Syntax highlighting.
vim.cmd[[syntax on]]

vim.opt.background = 'dark'

vim.cmd[[
  if has('termguicolors')
    set termguicolors
  endif
]]

-- No annoying sound on errors.
vim.opt.errorbells = false
vim.opt.visualbell = false

-- Copy indent from current line when starting a new line.
vim.opt.autoindent = true

-- Do smart autoindenting when starting a new line.
vim.opt.smartindent = true

-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2

-- Number of spaces to use for each step of (auto)indent.
-- Used for 'cindent', >>, <<, etc.
vim.opt.shiftwidth = 2

-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
-- Spaces are used in indents with the '>' and '<' commnds and
-- when 'autoindent' is on.
vim.opt.expandtab = true

-- Number of spaces that a <Tab> counts for while performing editing operations,
-- like inserting a <Tab> or using <BS>.
vim.opt.softtabstop = 2

-- Show line number.
vim.opt.number = true

-- This enables relative line numbering mode. With both number and
-- relativenumber enabled, the current line shows the true line number, while
-- all other lines (above and below) are numbered relative to the current line.
-- This is useful because you can tell, at a glance, what count is needed to
-- jump up or down to a particular line, by {count}k to go up or {count}j to go
-- down.
vim.opt.relativenumber = true

-- Draw signcolumn only when there is a sign to display.
vim.opt.signcolumn = 'auto'

-- Highlight current line.
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
-- Keep 3 lines off the edges of the screen when scrolling.
vim.opt.scrolloff = 3

-- Highlight search items.
vim.opt.hlsearch = true

-- Incremental search, show search matches as you type in each character.
vim.opt.incsearch = true

-- Smart case sensitive.
-- This setting makes search case-insensitive when all characters in the string
-- being searched are lowercase. However, the search becomes case-sensitive if
-- it contains any capital letters. This makes searching more convenient.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show matching parenthesis.
vim.opt.showmatch = true

