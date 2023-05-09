vim.keymap.set('n', '<leader>g', ':Ack!<CR>')
vim.cmd[[let g:ack_use_cword_for_empty_search=1]]
vim.cmd[[let g:ackhightlight=1]]
vim.cmd[[
  if executable('ag')
    let g:ackprg = 'ag --vimgrep --smart-case'
  endif
]]
