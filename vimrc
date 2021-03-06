set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Contains additional snippets files for various programming languages
Plugin 'honza/vim-snippets'

" Clang for completing C and C++ code
Plugin 'Rip-Rip/clang_complete'

" Ultisnips
" Plugin 'guns/ultisnips'

" Better indentation for Objective C
Plugin 'b4winckler/vim-objc'

" iOS integration with vim
Plugin 'eraserhd/vim-ios.git'

" Misc. colorschemes
Plugin 'chrishunt/color-schemes'
Plugin 'chriskempson/base16-vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'

" Lightweight vim status bar
Plugin 'bling/vim-airline'

" Scala syntax and defaults for the scala language
Plugin 'derekwyatt/vim-scala'

" Better JSON syntax coloring
Plugin 'elzr/vim-json'

" Full path fuzzy file, buffer, mru, tag, finder for Vim
Plugin 'kien/ctrlp.vim'

" Provides an easy way to browse the tags of the current file and get an overview of its structure
Plugin 'majutsushi/tagbar'

" Color nested matching parentheses with different colors
Plugin 'kien/rainbow_parentheses.vim'

" Always insert or delete brackets, parens, quotes in pairs
Plugin 'jiangmiao/auto-pairs'

" A much faster replacement for 99% of the uses of grep
Plugin 'rking/ag.vim'

" A tree explorer plugin for navigating the filesystem
Plugin 'scrooloose/nerdtree'

" Easily navigate vim's undo tree visually
Plugin 'sjl/gundo.vim'

" Helps break the habit of spamming 'jjjjj', 'kkkkk', etc.
Plugin 'takac/vim-hardtime'

" Adds new operator 'gc' for easy commenting in many languages
Plugin 'tpope/vim-commentary'

" Vim sugar for common UNIX shell commands
Plugin 'tpope/vim-eunuch'

" Powerful git wrapper for vim
Plugin 'tpope/vim-fugitive'

Plugin 'Shougo/unite.vim'                " Go to anywhere
Plugin 'tsukkee/unite-help'              " Add help source to unite
Plugin 'tsukkee/unite-tag'               " Add tag source to unite
Plugin 'Lokaltog/vim-easymotion'         " Wacky super motion!

" Improve ruby-vim integration
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'

" Haskell & Yesod
Plugin 'pbrisbin/vim-syntax-shakespeare'

" Operators for deleting, changing, and adding surroundings like parens, brackets, etc.
Plugin 'tpope/vim-surround'

" vim-signature is a plugin to place, toggle and display marks
Plugin 'kshenoy/vim-signature'

" JS beautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" Common Lisp
Plugin 'kovisoft/slimv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable smart tabs with airline
let g:airline#extensions#tabline#enabled = 1
" Use status bar by default
set laststatus=2

" slimv
" let g:slimv_swank_cmd = '!osascript -e "sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp"'
"let g:slimv_swank_cmd = '!osascript -e "tell application \"iTerm 2\" to do script \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\""'

set so=7
set wildmenu "autocomplete and fun stuff!
set ruler "always show current pos
set cmdheight=2 "shortens cmd height

set backspace=eol,start,indent "backspace configuration
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight searches

set incsearch "more like webbrowser search
set nolazyredraw "Don't redraw during macros

set magic "For regular expressions

set showmatch "Matching braces highlighting
set mat=2 "Blink for above

"No sound on errors
set noerrorbells
set novisualbell
set visualbell
set t_vb=
set tm=500

"Hard Time
let g:hardtime_default_on = 1
let g:list_of_normal_keys = [ "j", "k", "l", "h", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>", "w", "W", "b", "B" ]
let g:list_of_visual_keys = [ "j", "k", "l", "h", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>", "w", "W", "b", "B" ]
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 2

"COLOR STUFF
syntax enable "Enable highlighting
set guioptions-=T
set t_Co=256
set background=dark
colorscheme vimbrant
set nonu

" formatting for *.riif files
au BufWinEnter,BufRead,BufNewFile *.riif set filetype=ruby

set encoding=utf8
try
  lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

"Text tab indent etc.
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set cursorline
hi CursorLine cterm=NONE

set title

set number
set relativenumber
" Toggle relative line numbers
nnoremap <silent><C-l> :set relativenumber!<cr>

":make runs this script!
set makeprg=./compile

set textwidth=80
set tw=80
set wrap
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

let mapleader = " "
let g:mapleader = " "

" Useful shortcuts with leader

nnoremap <leader>w :w!<cr>
nnoremap <Leader>c :copen<CR>
nnoremap <Leader>C :cclose<CR>
nnoremap <Leader>8 :set tw=80<CR>
nnoremap <Leader>0 :set tw=0<CR>
nnoremap <Leader>i :set invnumber<CR>
nnoremap <Leader><TAB> <C-w><C-w>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>= <C-w>=
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>n :NERDTree<CR>

nnoremap <leader>w :w!<cr>
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L

nnoremap <Leader>, 2<C-w>>
nnoremap <Leader>. 2<C-w><
nnoremap <Leader>- 2<C-w>-
nnoremap <Leader>= 2<C-w>+

nnoremap <Leader>f :cnext<CR>
nnoremap <Leader>b :cprev<CR>

set clipboard=unnamed

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Disable auto completion, always <c-x> <c-o> to complete
let g:clang_complete_auto = 0 
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_close_preview = 1

" For Objective-C, this needs to be active, otherwise multi-parameter methods won't be completed correctly
let g:clang_snippets = 1

" Snipmate does not work anymore, ultisnips is the recommended plugin
let g:clang_snippets_engine = 'ultisnips'

" This might change depending on your installation
let g:clang_exec = '/usr/local/bin/clang'
let g:clang_library_path = '/usr/local/lib/libclang.dylib'

" Unite
" "
" let g:unite_source_rec_async_command='ag --follow --nocolor --nogroup --hidden
" -g ""'
let g:unite_source_history_yank_enable=1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nogroup --nocolor --hidden'
let g:unite_source_grep_recursive_opt = ''

" EasyMotion

let g:EasyMotion_do_mapping = 0 " Control all the mappings
let g:EasyMotion_smartcase = 0 " Match set smartcase

nmap <leader>s <Plug>(easymotion-s)

" Rainbow Parenthesis
nnoremap <Leader>0 :RainbowParenthesesToggle<CR>
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Don't conceal JSON
let g:vim_json_syntax_conceal=0

" Periodic backups
set backup
set backupdir=~/.vim/backup
set undodir=~/.vim/backup
set undofile
set directory=~/.vim/tmp

" If editing a scala or java file, set the makeprg to compile with maven
au BufNewFile,BufRead *.scala set makeprg=mvn\ compile
au BufNewFile,BufRead *.java set makeprg=mvn\ compile
nnoremap <Leader>m :make<CR>

" Don't take over the current tab when using make
set switchbuf=useopen,usetab,newtab

" Override scala.vim's tabstop of 2 spaces
au BufNewFile,BufRead *.scala set sw=4
au BufNewFile,BufRead *.java set sw=4

" Map Q to executing the q macro
nnoremap Q @q
 
" * * * * * * * * * * * * * * * * *
" CtrlP plugin settings
" * * * * * * * * * * * * * * * * *
"
" Ag - The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_cmd = 'CtrlP'

" Search by file name by default (<c-d> switches modes)
let g:ctrlp_by_filename = 0

" Regex mode by default (<c-r> to toggle)
let g:ctrlp_regexp = 0

let g:ctrlp_working_path_mode = 'acr'

" CtrlP window appears at bottom instead of top
let g:ctrlp_match_window_bottom = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.tar.gz,*.tgz,*.tar,*.gzip,*.jar

nnoremap <silent> <UP> :copen<CR>
nnoremap <silent> <DOWN> :cclose<CR>
nnoremap <silent> <RIGHT> :cnext<CR>
nnoremap <silent> <LEFT> :cprev<CR>

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
