" ########### Fish
  " Fix vim with fish
  if &shell =~# 'fish$'
    set shell=sh
  endif

" ########### Plugs
  " Define plugins folder
  call plug#begin('~/.config/nvim/plugged')

  " lean & mean status/tabline for vim that's light as air
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Vastly improved Javascript indentation and syntax support in Vim.
  Plug 'pangloss/vim-javascript'

  " React JSX syntax highlighting and indenting for vim.
  Plug 'mxw/vim-jsx'

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

  " True Sublime Text style multiple selections for Vim
  Plug 'terryma/vim-multiple-cursors'

  " Initialize plugin system
  call plug#end()

" ########### Leader Shortcuts
  " Leader key
  let mapleader = ","

  " Easier config reload
  nmap <leader>sv :source $MYVIMRC<cr>
  nmap <leader>ev :vsp $MYVIMRC<cr>

" ########### Shortcuts
  " Toggles hlsearch
  nmap <leader>hs :set hlsearch!<cr>

  " Remap window changing
  nmap <c-left> <c-w>h
  nmap <c-right> <c-w>l
  nmap <c-up> <c-w>k
  nmap <c-down> <c-w>j
  nmap <c-space> :NERDTreeToggle<cr>

  " Resize Panels with Shift
  nmap <S-Down> <c-w>+
  nmap <S-Up> <c-w>-
  nmap <S-Left> <c-w><
  nmap <S-Right> <c-w>>

  " Folding with space
  nmap <space> za

" ########### Config
  colorscheme dracula
  highlight MatchParen ctermfg=white

  " Config FZF
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
  nmap <C-P> :Files<cr>
  nmap <C-F> :Ag 

  " Turn on JSX syntax for .js files
  let g:jsx_ext_required = 0

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

  " Disable word wrapping
  set nowrap

  " Use decent folding
  set foldmethod=indent
  " Files open expanded
  set foldlevelstart=50

  " Don't fuck up vim's default file browser
  let NERDTreeMapActivateNode='<space>'

  " Airline config
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'luna'
  let g:airline_section_warning = ''
