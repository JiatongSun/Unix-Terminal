local keymap = vim.keymap

vim.g.mapleader = ','

-- Save file.
keymap.set('n', '<leader>w', ':w!<CR>')

-- Exit file.
keymap.set('n', '<leader>q', ':q!<CR>')

-- Splict window vertically.
keymap.set('n', '<leader>sv', '<C-w>v')

-- Splict window horizontally.
keymap.set('n', '<leader>sh', '<C-w>s')

-- Stay in indent mode.
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')
