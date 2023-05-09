" Use vim-plug as plugin manager
" From https://github.com/junegunn/vim-plug
call plug#begin()

" From https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" From https://github.com/junegunn/fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" From https://github.com/mileszs/ack.vim
Plug 'mileszs/ack.vim'

" From https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" From https://github.com/ervandew/supertab
Plug 'ervandew/supertab'

" From https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" From https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"********************** VIM SETTINGS **********************"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT/CMD SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file.
let mapleader = ","
" Fast saving.
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>t :terminal<CR>
" Close quickfix window.
map <leader>b :cclose<CR>
" Go to next item in quickfix window.
map <leader>n :cn<CR>
" Go to previous item in quickfix window.
map <leader>p :cp<CR>
" Let the command-line completion operates in an enhanced mode.
set wildmenu


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE/TEXT SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the character encoding used inside Vim.
set encoding=utf-8
" Use the system clipboard.
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread
" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.  A zero value disables this.
set textwidth=80
" Show "invisible" characters.
set listchars=tab:▸\ ,trail:·,eol:¬
" Make backspace behave more reasonably.
set backspace=indent,eol,start


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR/SOUND SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting.
syntax on
set background=dark
"colorscheme desert
" Enable 256 colors palette in Gnome Terminal.
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
" No annoying sound on errors.
set noerrorbells
set novisualbell


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENTATION/TAB SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy indent from current line when starting a new line.
set autoindent 
" Do smart autoindenting when starting a new line.
set smartindent
" Number of spaces that a <Tab> in the file counts for.
set tabstop=2
" Number of spaces to use for each step of (auto)indent.
" Used for 'cindent', >>, <<, etc.
set shiftwidth=2
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commnds and
" when 'autoindent' is on.
set expandtab
" Number of spaces that a <Tab> counts for while performing editing operations,
" like inserting a <Tab> or using <BS>.
set softtabstop=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LINE/COLUMN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number.
set number
" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber
" Show absolute line number in insert mode, otherwise relative line number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
" Highlight current line.
set cursorline
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
" Highlight current column.
set cursorcolumn
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
" Add a bit extra margin to the left.
set foldcolumn=1
" Minimal number of screen lines to keep above and below the cursor.
" Keep 3 lines off the edges of the screen when scrolling.
set scrolloff=3
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search items.
set hlsearch   
" Incremental search, show search matches as you type in each character.
set incsearch  
" Smart case sensitive.
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase 
set smartcase
" Show matching parenthesis.
set showmatch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"******************** PLUGINS SETTINGS ********************"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-p> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Ack
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>g :Ack!<CR>
" Use the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
" Use this option to highlight the searched term.
let g:ackhightlight=1
" Enable blank searches to run against the word under the cursor.
" When this option is not set, blank searches will only output an error message.
let g:ack_use_cword_for_empty_search=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin NerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:NERDTreeWinPos = "right"
nnoremap <C-t> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Do not show hidden files
let NERDTreeShowHidden=0

