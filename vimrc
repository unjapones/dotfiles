" https://github.com/junegunn/vim-plug
" Installation command:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tomlion/vim-solidity'
Plug 'junegunn/vim-easy-align'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" @TODO: replace the following with https://github.com/ctrlpvim/ctrlp.vim
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/tpope/vim-obsession.git'
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/Raimondi/delimitMate.git'

" Search plugins
"Plug 'https://github.com/vim-scripts/ack.vim.git'
"Plug 'https://github.com/epmatsw/ag.vim.git'
Plug 'dyng/ctrlsf.vim'

" Language packs for vim
Plug 'sheerun/vim-polyglot'

" Colorschemes
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/sjl/badwolf.git'
Plug 'https://github.com/noahfrederick/vim-hemisu.git'
Plug 'lifepillar/vim-solarized8'
Plug 'trevordmiller/nova-vim'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'chriskempson/base16-vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'https://github.com/rakr/vim-two-firewatch.git'

" Others
"Plug 'jparise/vim-graphql'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-commentary.git'

" JavaScript
"Plug 'w0rp/ale'
" TypeScript
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

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
"set expandtab
"set shiftwidth=2
"set softtabstop=2
" OLD ABOVE
set breakindent                                      "Mantain indent on wrapping lines
set autoindent                                       "autoindent
set tabstop=2 shiftwidth=2 expandtab softtabstop=2   "tabs = 2 spaces

" Setup colorscheme
" Most of the colorschemes are 256 colors terminal ready
"set t_Co=256
"let g:rehash256 = 1
"set background=dark
set background=light
"let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
"colorscheme badwolf
"colorscheme solarized8
"colorscheme nova
"colorscheme hemisu
"colorscheme one
"colorscheme nord
"colorscheme base16-outrun-dark
"colorscheme github
"colorscheme base16-zenburn
"colorscheme one
"colorscheme base16-atelier-plateau-light
"colorscheme base16-atelier-forest-light
"colorscheme base16-atelier-lakeside-light
"colorscheme base16-summerfruit-light
colorscheme base16-material-palenight



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
set hls
set incsearch
" Refresh any files
"set autoread


" Display line numbers, highlight current line nd always show current position
set number relativenumber
set cursorline
set ruler
" Always show status bar (useful also for vim-airline)
set laststatus=2
" Set tab label to show tab number, filename, if modified ('+' is shown if the
" current window in the tab has been modified)
set guitablabel=%N/\ %t\ %M
" Show line endings
"set list
"Highlight column
set colorcolumn=80


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
    \ 'dir':  '\v[\/](\.(git|hg|svn)|logs|node_modules|vendor|bower_components/build/dist)$',
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

" ALE config
" Set ESLint as plugging manager
"let g:ale_fixers = {
 "\ 'javascript': ['eslint']
 "\ }
"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'
"Coc
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

"""""""""""""""""""""""""""""
" Cursor (terminator + tmux)
" https://stackoverflow.com/questions/6488683/how-do-i-change-the-vim-cursor-in-insert-normal-mode/42118416#42118416
"""""""""""""""""""""""""""""
" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"
" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

"""""""""""""""""""""""""""""
" File types specific configs
" Custom bindings
"""""""""""""""""""""""""""""
" Move between panes with C-h/j/k/l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Copy to secondary clipboard
noremap Y "+y
" Search
nmap     <C-F>f <Plug>CtrlSFPrompt 
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
" Coc
nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
