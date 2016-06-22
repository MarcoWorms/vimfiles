" .vimrc
" Author: Jonathan Lima <greenboxal@gmail.com>
" Source: http://github.com/greenboxal/vimfiles

" ##### Vundle setup  {{{
set nocompatible              " be iMproved, required
filetype off                  " required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" "}}}
" ##### Bundles  {{{
" Vundle
Plugin 'VundleVim/Vundle.vim'

" Base
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'teranex/jk-jumps.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'milkypostman/vim-togglelist'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'sjl/vitality.vim'

" Support
Plugin 'tpope/vim-dispatch'
Plugin 'embear/vim-localvimrc'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Raimondi/delimitMate'
Plugin 'msanders/snipmate.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'Shougo/vimproc.vim'

" Colorschemes
Plugin 'sjl/badwolf'
Plugin 'zenorocha/vim'
Plugin 'tomasr/molokai'

" Languages
Plugin 'b4winckler/vim-objc'
Plugin 'rodjek/vim-puppet'
Plugin 'jnwhiteh/vim-golang'
Plugin 'pangloss/vim-javascript'
Plugin 'gkz/vim-ls'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hashivim/vim-terraform'
Plugin 'OrangeT/vim-csharp'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'osyo-manga/vim-monster'

" JS Beautify
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'

" Omnicompletion
if has('nvim')
	Plugin 'neomake/neomake'
	Plugin 'Shougo/deoplete.nvim'
	Plugin 'carlitux/deoplete-ternjs'
	Plugin 'zchee/deoplete-go'
	Plugin 'awetzel/elixir.nvim'
	Plugin 'Rip-Rip/clang_complete'
else
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'scrooloose/syntastic'
endif 

Plugin 'OmniSharp/omnisharp-vim'

" Search
Plugin 'haya14busa/incsearch.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Git
Plugin 'tpope/vim-fugitive'
" }}}
" ##### Vundle post-setup {{{
call vundle#end()            " required
filetype plugin indent on    " required
" }}}
" ##### Basic options  {{{
" NeoVim Options
" Display incomplete commands.
set noshowcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=4
" And again, related.
set shiftwidth=4

" Files open expanded
set foldlevelstart=50
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Always diff using vertical mode
set diffopt+=vertical

" Automatically reads changed files
set autoread

" Enable syntax highlighting
syntax on

" Sets the colorscheme for terminal sessions too.
colorscheme dracula
autocmd BufEnter * colorscheme dracula

" Leader = ,
let mapleader = ","
let maplocalleader = "'"

" Open preview window below the code
set splitbelow

" Remove 'press any key to continue'
set cmdheight=1
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" ##### Line movement {{{
" Go to start of line with H and to the end with $
noremap H ^
noremap L $

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Split windows {{{
" Move around easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <Space> za
" Open all folds
nnoremap zO zR
" Close all folds
nnoremap zC zM
" Close current fold
nnoremap zc zc
" Close all folds except the current one
nnoremap zf mzzMzvzz
" }}}
" ##### Search {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}
" ##### YouCompleteMe {{{
nnoremap <localleader>gd :YcmCompleter GoToDefinition<cr>
nnoremap <localleader>gr :YcmCompleter GoToReferences<cr>
nnoremap <localleader>gk :YcmCompleter GetDoc<cr>
nnoremap <localleader>gt :YcmCompleter GetType<cr>
nnoremap <localleader>gR :YcmCompleter RefactorRename 
" }}}
" ##### Spell {{{
set spelllang=en_us

nnoremap ,sc :set spell!<cr>
" }}}
" ##### Misc {{{
" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap current paragraph
noremap <leader>w gqap

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go full-screen
nnoremap <leader>fs :set lines=999 columns=9999<cr>

" Set current file executable
nnoremap <leader>xx :!chmod +x %<cr>

" Close Quickfix and Preview
nnoremap <leader>q :pclose<cr>:cclose<cr>

" OS Clipboard
vnoremap <leader>c "*y
vnoremap <leader>v "*p
vnoremap <leader>V "*P
nnoremap <leader>v "*p
nnoremap <leader>V "*P
" }}}
" }}}
" ##### Plugin settings  {{{
" ##### Fugitive  {{{
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push
" }}}
" ##### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0
let g:airline#extensions#default#section_truncate_width = {
  \ 'a': 60,
  \ 'b': 80,
  \ 'x': 100,
  \ 'y': 100,
  \ 'z': 60,
\ }
" }}}
" ##### FZF  {{{
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 
" }}}
" ##### Yankstack  {{{
" Don't use default mappings
let g:yankstack_map_keys = 0

" Set bindings
nmap <C-M> <Plug>yankstack_substitute_older_paste
nmap <C-N> <Plug>yankstack_substitute_newer_paste
" }}}
" ##### Number toggle  {{{
let g:NumberToggleTrigger="<leader>ll"
"}}}
" ##### togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" ##### localvimrc {{{
let g:localvimrc_whitelist=$HOME.'/src/github.com/pagarme/.*'
let g:localvimrc_persistent=1
" }}}
" ##### editorconfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
" }}}
" ##### OmniSharp {{{
let g:OmniSharp_timeout = 1

let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

augroup omnisharp_commands
    autocmd!

    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>

    " Automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the current cursor position.
    autocmd FileType cs nnoremap <localleader>gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <localleader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <localleader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <localleader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <localleader>fu :OmniSharpFindUsages<cr>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <localleader>fm :OmniSharpFindMembers<cr>

    " Cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <localleader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <localleader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <localleader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <localleader>dc :OmniSharpDocumentation<cr>
augroup END

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
" nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>
" }}}
" ##### Syntastic {{{
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_balloons = 0
" }}}
" ##### Deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}
" ##### monster (ruby) {{{
let g:monster#completion#rcodetools#backend = "async_rct_complete"
" }}}
" ##### Neomake {{{
augroup neomake_save_linter
	autocmd!
	autocmd BufWritePost *.js Neomake
	autocmd BufWritePost *.py Neomake
	autocmd BufWritePost *.rb Neomake
	autocmd BufWritePost *.pp Neomake
	autocmd BufWritePost *.erl Neomake
	autocmd BufWritePost *.ex Neomake
	autocmd BufWritePost *.exs Neomake
augroup end

let g:neomake_javascript_standard_maker = { 'errorformat': '%E %f:%l:%c: %m' }
let g:neomake_puppet_enabled_makers = ['puppet', 'puppetlint']
" }}}
" }}}
" ##### Filetype-specific  {{{
" ##### Ruby  {{{
" Specific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
" Convert tabs to spaces in Ruby files
autocmd FileType ruby set expandtab

" But not for erb files...
autocmd FileType eruby set shiftwidth=4
autocmd FileType eruby set tabstop=4
"
" Remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir
" }}}
" ##### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile Puppetfile set filetype=ruby

" And custom tab sizes too
autocmd FileType puppet set shiftwidth=2
autocmd FileType puppet set tabstop=2
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap
" }}}
" ##### JavaScript  {{{
" Sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html
" }}}
" ##### Vim {{{
" Make vimrcs open folded
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### LiveScript {{{
autocmd BufRead,BufNewFile *.ls set filetype=ls
autocmd FileType ls set shiftwidth=2
autocmd FileType ls set tabstop=2
" }}}
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml set filetype=yaml
" }}}
" ##### Erlang {{{
autocmd BufRead,BufNewFile *.erl set filetype=erlang
autocmd FileType erlang set shiftwidth=2
autocmd FileType erlang set tabstop=2
" }}}
" ##### Elixir {{{
autocmd BufRead,BufNewFile *.ex set filetype=elixir
autocmd BufRead,BufNewFile *.exs set filetype=elixir
autocmd FileType elixir set shiftwidth=2
autocmd FileType elixir set tabstop=2
" }}}
" }}}
