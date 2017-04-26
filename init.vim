" Fix vim with fish
if &shell =~# 'fish$'
    set shell=sh
endif

" ##### Plugs #####

" Define plugins folder
call plug#begin('~/.config/nvim/plugged')

" 'Vastly improved Javascript indentation and syntax support in Vim.'
Plug 'pangloss/vim-javascript'

" FZF wrapper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" Colorschemes
Plug 'crusoexia/vim-dracula'

" An extensible & universal comment vim-plugin that also handles embedded filetypes 
Plug 'tomtom/tcomment_vim'

" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" 🌠 Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

" ##### /Plugs #####


" ##### Leader Shortcuts #####

" Leader key
let mapleader = ","

" Easier config reload
nmap <leader>sv :source $MYVIMRC<cr>

" ##### /Leader Shortcuts #####


" ##### Shortcuts #####

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Remap window changing
nnoremap <c-left> <c-w>h
nnoremap <c-right> <c-w>l
nnoremap <c-up> <c-w>k
nnoremap <c-down> <c-w>j
nnoremap <c-space> :NERDTreeToggle<cr>


" ##### /Shortcuts #####


" ##### Config #####

colorscheme dracula

" Config FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 

" Global tab width.
set tabstop=2
" And again, related.
set shiftwidth=2
" And also expand tabs.
set expandtab

" Show line numbers.
set number
" Show cursor position.
set ruler

" Ignore case sensitive command autocomplete
set ignorecase

" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" ##### /Config #####

