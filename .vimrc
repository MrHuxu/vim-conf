" At first you should install vim-plug 
" $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Use vim-plug to manage the plugins
call plug#begin()


Plug 'tpope/vim-surround'
Plug 'xolox/vim-misc'
Plug 'ternjs/tern_for_vim'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim'


Plug 'ayu-theme/ayu-vim'
set termguicolors          " enable true colors support
let ayucolor="mirage"      " for mirage version of theme
colorscheme ayu

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown'
set conceallevel=2
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2


Plug 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0                             " disable AutoComplPop.
let g:neocomplete#enable_at_startup = 1                   " use neocomplete.
let g:neocomplete#enable_smart_case = 1                   " use smartcase.
let g:neocomplete#sources#syntax#min_keyword_length = 3   " set minimum syntax keyword length.


Plug 'scrooloose/nerdtree'
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
" NERDTree window location
let NERDTreeWinPos = "left"
" map Ctrl-n to toggle NERDTree
nnoremap <c-n> :exe 'NERDTreeToggle'<CR>


Plug 'xolox/vim-easytags'
let g:easytags_async=1
let g:easytags_cmd='ctags'
let g:easytags_js_cmd='jsctags'
let g:easytags_languages = {
\  'javascript': {
\    'cmd': 'jsctags',
\    'args': [],
\    'fileoutput_opt': '-f'
\  },
\  'ruby': {
\    'cmd': 'ripper-tags',
\    'args': [],
\    'fileoutput_opt': '-f'
\  }
\}


Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


Plug 'majutsushi/tagbar'
" map Ctrl-t to TagBar
nmap <c-t> :TagbarToggle<CR>


Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" find C-t mapping and change it to avoid conflicts with TagBar
autocmd FileType go nmap <leader>t   <Plug>(go-test)
autocmd FileType go nmap <leader>b   <Plug>(go-build)
autocmd FileType go nmap <leader>r   <Plug>(go-run)
autocmd FileType go nmap <leader>ts  <Plug>(go-def-stack)
autocmd FileType go nmap <leader>b   <Plug>(go-build)


Plug 'mileszs/ack.vim'
" map Ctrl-f to Ack
nmap <c-a> :Ack<space>


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" map Ctrl+p to FZF
nmap <c-p> :FZF<enter>


Plug 'pangloss/vim-javascript'
set conceallevel=1
let g:javascript_conceal_arrow_function="⇒"


Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_next_key='<C-d>'
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction
" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock') == 2
    exe 'NeoCompleteUnlock'
  endif
endfunction


Plug 'w0rp/ale'
let &runtimepath.=',~/.vim/plugged/ale'
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_linters = {
      \   'javascript': ['eslint', 'flow'],
      \}
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✖ %d', '⚠ %d', '']


Plug 'vim-airline/vim-airline'
set laststatus =2                                        " make airline show up
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1             " enable the extension tabline
let g:airline#extensions#ale#enabled = 1                 " enable the extension ale
let g:airline_section_error = '%{ALEGetStatusLine()}'    " show ale validate results in airline


call plug#end()

" set encoding & file encoding
set encoding=utf-8
set fenc=utf-8

" disable vi keyboard, use vim keyboard instead, and make backspace key work
set nocompatible
set backspace=indent,eol,start

syntax on               " enable syntax detection
filetype on             " enable file type detection
set number              " show line number
set showmatch           " show the match of bracket
set shell=/bin/bash     " set bash to be the default shell interpreter
set history=50          " set the amount of history

" disable cache & swap
set nobackup
set noswapfile

" ignore case in search and highlight the search result
set ignorecase
set hlsearch

" use F2 to enable the paste mode
nnoremap <F2> :set invpaste paste?<CR>
imap <F2></F2> :set invpaste paste?<CR>
set pastetoggle=<F2></F2></CR><C-O></F2></CR></F2>

" setup the indention of Tab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=120
set expandtab

" moving cursor among the windows 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" auto-complete the brackets
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i

" make cursor work everywhere
set mouse=a
set selection=exclusive
set selectmode=mouse,key
inoremap ' ''<ESC>i

" map F6 to compile and execute the current file
map <F6> :call Runit()<CR>
func! Runit()
  if &filetype == 'c'
    exec "!clang  % -o %<"
    exec "! ./%<"
  elseif &filetype == 'cpp'
    exec "!clang++ % -o %<"
    exec "! ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %<"
  elseif &filetype =='python'
    exec "!python %"
  elseif &filetype=='ruby'
    exec "!ruby %"
  elseif &filetype=='javascript'
    exec "!node %"
  elseif &filetype=='sh'
    exec "!sh %"
  elseif &filetype=='go'
    exec "!go run %"
  endif
endfunc
