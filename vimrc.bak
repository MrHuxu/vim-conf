" At first you should install Vundle
" $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 
" HTML indent has been removed from Vim since the version 7.4
" So if you want the HTML indent, you should use the indent file of Vim7.3
" $ wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
" $ tar jxf vim-7.3.tar.bz2
" $ cp vim73/runtime/indent/html.vim ~/.vim/indent/
 
set encoding=utf-8
 
" 不兼容VI键盘，使用vim键盘，并且可以使用退格键(backspace)
set nocompatible
set backspace=indent,eol,start
 
" 设定shell解释器为zsh，防止出现can't open /var/folder这样的错误
set shell=/bin/bash
se shell=/bin/bash
 
" 文件类型识别
filetype on
 
" 调用vundle来管理插件，爽歪歪~
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'MrHuxu/vim-rails'
Plugin 'vim-scripts/RubySinatra'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'vim-scripts/TabBar'
Plugin 'MrHuxu/colorizer'
Plugin 'MrHuxu/vim-dicts'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/ctrlp.vim'
Plugin 'MrHuxu/vim-indent-html'
Plugin 'tpope/vim-haml'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'
Plugin 'fatih/vim-go'
 
" Colorschemes
Plugin 'chriskempson/base16-vim'
 
" Neocomplete with snipMate
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'MrHuxu/vim-snippets'
 
call vundle#end()
filetype plugin indent on
 
 
" 禁止生成临时文件
set nobackup
set noswapfile
 
" 历史记录数
set history=50
 
" 设置编码  
set enc=utf-8  
 
" 设置文件编码  
set fenc=utf-8  
 
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
 
" 设置开启语法高亮  
syntax on  
 
" 显示行号  
set number  
 
" 高亮显示匹配的括号
set showmatch
 
" 搜索忽略大小写
set ignorecase  
 
" 查找结果高亮度显示  
set hlsearch
set incsearch
 
" gvim设置
set guioptions-=m
set guioptions-=T
 
" 根据文件类型设定缩进,覆盖掉默认的
"autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType ruby,c++,c setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
"autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType cpp,c setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
 
" 设置tab缩进
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=120
set expandtab
 
" 命令行下按tab键自动完成
set wildmode=list:full
set wildmenu
 
" 设置默认的颜色,曾用: lettuce, inkpot, habilight, molokai, solarized
set t_Co=256
set background=dark
colorscheme base16-solarized-dark
highlight LineNr ctermfg=015 ctermbg=242

let g:html_indent_inctags = "html,body,head,tbody"
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
 
" 可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
 
" 把 F7 映射到 启动Colorizer插件
map <F7> :Colorizer<CR>
 
" 把 Ctrl-n 映射到 启动NERDTree插件
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
nnoremap <c-n> :exe 'NERDTreeToggle'<CR> 
 
" 把 Ctrl-t 映射到启动Tagbar
nmap <c-t> :TagbarToggle<CR>
 
" 把Ack映射到Ctrl-F
nmap <c-a> :Ack<space>
 
" 设置airline主题，以及字体
set laststatus=2
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
 
" 设置自动保存
imap <F5> <Esc>:w<cr>  
 
" 在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
 
" 设置MacVim字体
se guifont=Source\ Code\ Pro\ for\ Powerline:h17
set guifont=Source\ Code\ Pro\ for\ Powerline:h17
 
" <F6> 编译和运行当前程序
map <F6> :call Runit()<CR>
func! Runit()
  "    exec "w"
  if &filetype == 'c'
    exec "!clang  % -o %<"
    exec "! ./%<"
  elseif &filetype == 'cpp'
    exec "!clang++ % -o %<"
    exec "! ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %<"
  elseif &filetype == 'php'
    exec "!php %"
  elseif &filetype =='python'
    exec "!python %"
  elseif &filetype=='ruby'
    exec "!ruby %"
  elseif &filetype=='javascript'
    exec "!node %"
  elseif &filetype=='sh'
    exec "!sh %"
  elseif &filetype=='go'
    exec "!go build %"
    exec "! ./%<"
  elseif &filetype=='coffee'
    exec "!coffee %"
  elseif &filetype=='less'
    exec "!lessc % %<.css"
  endif
endfunc
" 设置slim高亮
au BufNewFile,BufRead *.slim set filetype=slim
 
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
 
"解决vim的复制问题
nnoremap <F2> :set invpaste paste?<CR>
imap <F2></F2> :set invpaste paste?<CR>
set pastetoggle=<F2></F2></CR><C-O></F2></CR></F2>
 
" 括号以及引号的补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
 
" indent_guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
 
" Setting of Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
 
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions',
      \ 'ruby' : $HOME.'/.vim/bundle/vim-dicts/ruby.dict',
      \ 'javascript' : $HOME.'/.vim/bundle/vim-dicts/javascript.dict',
      \ 'css' : $HOME.'/.vim/bundle/vim-dicts/css.dict'
      \ }
 
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ?  "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ?    "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 
" Settings of ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

