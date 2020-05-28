"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/junegunn/vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes


Plug 'tomlion/vim-solidity'
Plug 'junegunn/vim-easy-align'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/tpope/vim-obsession.git'
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
"Plug 'https://github.com/vim-scripts/ack.vim.git'
Plug 'https://github.com/epmatsw/ag.vim.git'

" Colorschemes
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/sjl/badwolf.git'
Plug 'https://github.com/noahfrederick/vim-hemisu.git'
Plug 'lifepillar/vim-solarized8'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/sheerun/vim-wombat-scheme.git'

" Others
Plug 'jparise/vim-graphql'

" Initialize plugin system
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fix true-color color schemes (from solarized8)
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
filetype plugin indent on

" Use white spaces instead of hard tab for identation
set expandtab
set shiftwidth=2
set softtabstop=2

" Setup colorscheme
" Most of the colorschemes are 256 colors terminal ready
"set t_Co=256
"let g:rehash256 = 1
set background=dark
"set background=light
let g:molokai_original = 1
"colorscheme molokai
"let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"colorscheme badwolf
"colorscheme solarized8_dark
"colorscheme solarized8
"colorscheme nova
"colorscheme hemisu
"colorscheme one
"colorscheme nord
"colorscheme base16-outrun-dark
"colorscheme wombat

" Turn on the WiLd menu for multiple options (when hitting the tab key) and
" some ignored options
set wildmenu
set wildignore=*.o,*~,*.pyc
" Turn off case sensitive search
set ignorecase
" When the sensitive search is off alongside with smartcase (on), the search
" the search will be case insensitive unless it contains an uppercase letter
set smartcase
" Highlight the search result as the search is being specified
set incsearch
" Refresh any files
"set autoread


" Display line numbers, highlight current line nd always show current position
set number
set cursorline
set ruler
" Always show status bar (useful also for vim-airline)
set laststatus=2
" Set tab label to show tab number, filename, if modified ('+' is shown if the
" current window in the tab has been modified)
set guitablabel=%N/\ %t\ %M
" Show line endings
"set list


" Remap <Leader> from \ to ,
let mapleader = ","
" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>
" Next & Previous tab mappings
noremap <C-n> :tabprevious<CR>
noremap <C-m> :tabnext<CR>

" Press F9 to toggle NerdTree
noremap <F9> :NERDTreeToggle<CR>
" CtrlP mapping and custom ignore options
let g:ctrlp_map = '<c-p>'
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""
" File types specific configs
"""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.md set filetype=markdown



" Airline pluiginconfig
" Use the Powerline symbols for a Powerline-ready font
let g:airline_powerline_fonts = 1

" CtrlP plugin configuration needed (check the readme of the plugin)
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
" CtrlP custom ignore options
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|logs|node_modules|vendor|bower_components)$',
    \ 'file': '\v\.(exe|so|dll|map)$',
    \ 'link': 'some_bad_symbolic_links'
    \ }

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
 autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
"autocmd FileChangedShellPost *
  "echohl WarningMsg | echo "File changed on disk. Buffer reloaded." |
  "echohl None

" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

