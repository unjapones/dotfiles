" Pathogen initial setup
execute pathogen#infect()
" List of plugins installed:
" ----COLORSCHEMES----
" badwolf
" gruvbox
" iceberg.vim
" molokai
" vim-hemisu
" ----SYNTAX----
" vim-javascript
" vim-javascript-syntax
" vim-less
" ----FILE BROWSING/OPENING----
" ctrlp.vim
" nerdtree
" ----MOTION----
" vim-easymotion
" ----SESSION----
" vim-obsession

syntax on
filetype plugin indent on

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


" Display line numbers, highlight current line nd always show current position
set number
set cursorline
set ruler
" Set tab label to show tab number, filename, if modified ('+' is shown if the
" current window in the tab has been modified)
set guitablabel=%N/\ %t\ %M


" CtrlP plugin configuration needed (check the readme of the plugin)
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
" CtrlP custom ignore options
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|logs|node_modules|vendor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links'
  \ }


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
