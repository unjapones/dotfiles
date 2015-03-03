runtime bundle/vim-pathogen/autoload/pathogen.vim
" Pathogen initial setup
execute pathogen#infect()
" List of plugins installed:
" ------------------------------------------
" ---------- PLUGIN MANAGEMENT -------------
" ------------------------------------------
" vim-pathogen      https://github.com/tpope/vim-pathogen
" -------------------------------------
" ---------- COLORSCHEMES -------------
" -------------------------------------
" badwolf               https://github.com/sjl/badwolf.git
" gruvbox               https://github.com/morhetz/gruvbox.git
" iceberg.vim           https://github.com/cocopon/iceberg.vim.git
" molokai               https://github.com/tomasr/molokai.git
" vim-hemisu            https://github.com/noahfrederick/vim-hemisu.git
" -------------------------------
" ---------- SYNTAX -------------
" -------------------------------
" syntastic             https://github.com/scrooloose/syntastic.git
" vim-javascript        https://github.com/pangloss/vim-javascript.git
" vim-javascript-syntax https://github.com/jelera/vim-javascript-syntax.git
" vim-less              https://github.com/groenewege/vim-less.git
" ---------------------------------------------
" ---------- FILE BROWSING/OPENING -------------
" ---------------------------------------------
" ctrlp.vim             https://github.com/kien/ctrlp.vim.git
" nerdtree              https://github.com/scrooloose/nerdtree.git
" -------------------------------
" ---------- MOTION -------------
" -------------------------------
" vim-easymotion        https://github.com/Lokaltog/vim-easymotion.git
" --------------------------------
" ---------- SESSION -------------
" --------------------------------
" vim-obsession         https://github.com/tpope/vim-obsession.git
" ------------------------------
" ---------- OTHER -------------
" ------------------------------
" delimitMate           https://github.com/Raimondi/delimitMate.git
" vim-airline           https://github.com/bling/vim-airline.git

syntax on
filetype plugin indent on

" Use white spaces instead of hard tab for identation
set expandtab
set shiftwidth=4
set softtabstop=4


" Setup colorscheme
" Most of the colorschemes are 256 colors terminal ready
set t_Co=256
let g:rehash256 = 1
set background=dark
let g:molokai_original = 1
colorscheme molokai
"let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
"colorscheme badwolf


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
set list


" CtrlP plugin configuration needed (check the readme of the plugin)
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
" CtrlP custom ignore options
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|logs|node_modules|vendor)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links'
    \ }


" Syntastic plugin configuration
" TODO: looks like the 'live' syntax check for JS file is not working (update
" jshint?)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode='active'


" Airline pluiginconfig
" Use the Powerline symbols for a Powerline-ready font
let g:airline_powerline_fonts = 1


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
