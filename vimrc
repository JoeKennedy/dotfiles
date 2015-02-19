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

" Syntastic for objective C
Plugin 'terhechte/syntastic'

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


" Operators for deleting, changing, and adding surroundings like parens, brackets, etc.
Plugin 'tpope/vim-surround'

" vim-signature is a plugin to place, toggle and display marks
Plugin 'kshenoy/vim-signature'

" JS beautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

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
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

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

"Bracket and Paren auto expansion
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

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

set noswapfile
set nobackup
set nowritebackup

let mapleader = " "

" Useful shortcuts with leader

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

" Show sidebar signs.
let g:syntastic_enable_signs=1

" Read the clang complete file
let g:syntastic_objc_config_file = '.clang_complete'

" Status line configuration
set statusline+=%#warningmsg#  " Add Error ruler.
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <silent> ` :Errors<CR>

" Tell it to use clang instead of gcc
let g:syntastic_objc_checker = 'clang'

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
