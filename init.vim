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

  " Install FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Make the yanked region apparent!
  Plug 'machakann/vim-highlightedyank'

  " Colorschemes
  Plug 'crusoexia/vim-dracula'

  " An extensible & universal comment vim-plugin that also handles embedded filetypes
  Plug 'tomtom/tcomment_vim'

  " Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
  Plug 'Raimondi/delimitMate'

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " A tree explorer plugin for vim.
  Plug 'scrooloose/nerdtree'

  " True Sublime Text style multiple selections for Vim
  Plug 'terryma/vim-multiple-cursors'

  " Asynchronous linting and make framework for Neovim/Vim
  Plug 'neomake/neomake'

  " Better whitespace highlighting for Vim
  Plug 'ntpeters/vim-better-whitespace'

  " Initialize plugin system
  call plug#end()

" ########### Leader Shortcuts
  " Leader key
  let mapleader = ","

  " Easier config reload
  nnoremap <leader>sv :source $MYVIMRC<cr>
  nnoremap <leader>ev :vsp $MYVIMRC<cr>

" ########### Shortcuts
  " Toggles hlsearch
  nnoremap <leader>hs :set hlsearch!<cr>

  vnoremap § <ESC>
  inoremap § <ESC>
  nnoremap § <ESC>

  " Reemap window changing
  nnoremap <c-up> <c-w>k
  nnoremap <c-left> <c-w>h
  nnoremap <c-down> <c-w>j
  nnoremap <c-right> <c-w>l

  " Sidebar toggle
  nnoremap <c-space> :NERDTreeToggle<cr>

  " Resize Panels with Shift
  nnoremap <S-down> <c-w>-
  nnoremap <S-left> <c-w><
  nnoremap <S-up> <c-w>+
  nnoremap <S-right> <c-w>>

  " Folding with space
  nnoremap <space> za

" ########### Config
  colorscheme dracula
  highlight MatchParen ctermfg=white

  set mouse=a

  " Config FZF
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
  nnoremap <C-f> :Ag 
  nnoremap <C-p> :FZF<cr>

  " Turn on JSX syntax for .js files
  let g:jsx_ext_required = 0

  " Global tab width.
  set tabstop=2
  " And again, related.
  set shiftwidth=2
  " And also expand tabs.
  set expandtab

  set colorcolumn=72

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

  set wildmenu

  set clipboard=unnamedplus

  " Don't fuck up vim's default file browser
  let NERDTreeMapActivateNode='<space>'
  let g:NERDTreeHijackNetrw = 0

  " Airline config
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'dark'
  let g:airline_section_warning = ''
  let g:airline#extensions#tabline#enabled = 1

  " Dont override my bg :)
  hi Normal ctermbg=none

  " Make neomake work
  augroup neomake_save_linter
	  autocmd!
	  autocmd BufWritePost,BufReadPost * Neomake
  augroup end
  let g:neomake_place_signs = 1
  let g:neomake_javascript_standard_maker = { 'errorformat': '%E %f:%l:%c: %m' }
  let g:neomake_puppet_enabled_makers = ['puppet', 'puppetlint']
