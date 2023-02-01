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
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/tpope/vim-obsession.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
" Plug 'chriskempson/base16-vim'
" Plug 'wadackel/vim-dogrun'
Plug 'cormacrelf/vim-colors-github'
Plug 'https://github.com/rakr/vim-two-firewatch.git'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Rigellute/shades-of-purple.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'tomasiser/vim-code-dark'
Plug 'ghifarit53/tokyonight-vim'
Plug 'flrnd/candid.vim'
Plug 'ntk148v/vim-horizon'
Plug 'cocopon/iceberg.vim'
Plug 'macguirerintoul/night_owl_light.vim'
Plug 'wuelnerdotexe/vim-enfocado'

" Others
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'statico/vim-javascript-sql'
"Plug 'jparise/vim-graphql'
Plug 'https://github.com/lifepillar/pgsql.vim.git'
Plug 'mattn/emmet-vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Javascript/Typescript
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
" Prevent coc from making the cursor go away
let g:coc_disable_transparent_cursor = 1
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-volar-tools', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'}
Plug 'suy/vim-context-commentstring'

" Version control
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'

" Initialize plugin system
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fix true-color color schemes (from solarized8)
set termguicolors
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
" set t_Co=256
" let g:rehash256 = 1
""""""""""""""""""""""""""""""""""""""
" DRACULA CONFIG
" colorscheme dracula
" let g:airline_theme='dracula'
" let g:dracula_italic=0
""""""""""""""""""""""""""""""""""""""
" SHADES OF PURPLE CONFIG
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
colorscheme shades_of_purple
""""""""""""""""""""""""""""""""""""""
" GITHUB CONFIG
" set background=light
" colorscheme github
" let g:airline_theme = "github"
""""""""""""""""""""""""""""""""""""""
" GRUVBOX CONFIG
" set background=dark
" let g:gruvbox_underline=1
" let g:gruvbox_bold=1
" let g:gruvbox_guisp_fallback = 'bg'
" colorscheme gruvbox
""""""""""""""""""""""""""""""""""""""
" CODEDARK CONFIG
" set background=dark
" colorscheme codedark
" let g:airline_theme = 'codedark'
""""""""""""""""""""""""""""""""""""""
" SOLARIZED LIGHT CONFIG
" set background=light
" colorscheme solarized8_flat
""""""""""""""""""""""""""""""""""""""
" ENFOCADO colorscheme
"set background=light
" let g:airline_theme = 'enfocado'
"let g:enfocado_style = 'neon'
" let g:enfocado_style = 'nature'
" colorscheme enfocado
""""""""""""""""""""""""""""""""""""""
"colorscheme one
"colorscheme jummidark
" set background=dark
" colorscheme codedark
" let g:airline_theme = 'codedark'
function! ToggleBg()
  if &g:background == 'light'
    set background=dark
    let g:shades_of_purple_airline = 1
    let g:airline_theme='shades_of_purple'
    colorscheme shades_of_purple
  else
    set background=light
    let g:airline_theme='github'
    colorscheme github
  endif
endfunction
noremap <F10> :call ToggleBg()<CR>

" Turn on the WiLd menu for multiple options (when hitting the tab key) and
" some ignored options
set wildmenu
set wildignore=*.o,*~,*.pyc,*.swp
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
" Display a nicer tab barline, supported by vim-airline
let g:airline#extensions#tabline#enabled=1
"
" Set tab label to show tab number, filename, if modified ('+' is shown if the
" current window in the tab has been modified)
set guitablabel=%N/\ %t\ %M
" Show line endings
"set list
"Highlight column
set colorcolumn=80


" Remap <Leader> from \ to ,
let mapleader = ","
" let mapleader = " "
" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>
" Next & Previous tab mappings
noremap <C-n> :tabprevious<CR>
noremap <C-m> :tabnext<CR>

" Press F9 to toggle NerdTree
noremap <F9> :NERDTreeToggle<CR>
" CtrlP mapping and custom ignore options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_root_markers = ['.vim', '.git', 'node_modules', 'package.json', 'app.js']
let NERDTreeShowHidden=1
" Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1
let NERDTreeWinSize=40

" Allow mouse to select tab and buffer
set mouse=a

" Use persistent history.
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" last-position-jump*
" This autocommand jumps to the last known position in a file
" just after opening it, if the '" mark is set:
:au BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif


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
    \ 'dir':  '\v[\/](\.(git|hg|svn)|logs|node_modules|vendor|bower_components|build|dist)$',
    \ 'file': '\v\.(exe|so|dll|map)$',
    \ 'link': 'some_bad_symbolic_links'
    \ }
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode = 'w'

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

"Coc
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
let g:jsdoc_formatter='tsdoc'
let g:doge_filetype_aliases = {
\  'javascript': [ 'javascript.jsx', 'javascriptreact', 'javascript.tsx', 'typescriptreact', 'typescript', 'typescript.tsx']
\}

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
nmap <silent> gi <Plug>(coc-implementation)
inoremap <silent><expr> <c-k> coc#refresh()
nnoremap <silent> <leader>D :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>
nmap <silent> <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
" inoremap <C-k>:call CocActionAsync('showSignatureHelp')<cr>
" inoremap <C-L>:call CocActionAsync('showSignatureHelp')<cr>
"
" Coc prettier on selection
vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>ff <Plug>(coc-format-selected)
nnoremap <silent> <leader>F :<C-u>CocCommand prettier.formatFile<cr>


"""""""""""""""""""""""
" Sometimes syntax highlighting can get out of sync 
"""""""""""""""""""""""
" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"""""""""""""""""""""""
" Other plugins' config
"""""""""""""""""""""""
"let g:javascript_sql_dialect = 'pgsql'

set foldmethod=syntax
set foldlevelstart=2
let javaScript_fold=1 
let typeScript_fold=1 
let typescript_fold=1 

au BufNewFile,BufRead *.pgsql set filetype=pgsql
au BufNewFile,BufRead *.pgsql set syntax=pgsql

"""""""""""""""""""""""
" Vue & coc-volar specific options
" https://github.com/yaegassy/coc-volar
"""""""""""""""""""""""
au FileType vue let b:coc_root_patterns = ['.git', '.env', 'package.json', 'tsconfig.json', 'jsconfig.json', 'vite.config.ts', 'nuxt.config.ts']


" """""""""""""""""""""
" Emmet
" Redefine trigger key
" """""""""""""""""""""
let g:user_emmet_leader_key='<C-M>'
