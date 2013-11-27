set encoding=utf-8
" 启动vim时窗口的大小
set lines=55 columns=200  

" 不兼容VI键盘，使用vim键盘，并且可以使用退格键(backspace)
set nocompatible
set backspace=indent,eol,start

" 高亮当前行
set cul
se cul
se cuc

" 调用Pathogen插件来管理插件 必须在 filetype plugin indent on 之前
call pathogen#runtime_append_all_bundles()

" 文件类型识别
filetype on
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
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

" 设置tab缩进
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=120
set expandtab

" 命令行下按tab键自动完成
set wildmode=list:full
set wildmenu

" 设置默认的颜色
"colorscheme lettuce
"colorscheme inkpot
colorscheme habilight

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 把 F9 映射到 启动Colorizer插件
map <F7> :Colorizer<CR>

" 把 F8 映射到 启动NERDTree插件
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
map <F8> :NERDTree<CR>

" 设置自动保存
imap <F5> <Esc>:w<cr>  

" 在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 设置FuzzyFinder
let mapleader = "\\"
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>

" 设置Color-Sample
map <silent><F4> :NEXTCOLOR<cr>
map <silent><F3> :PREVCOLOR<cr>

" 缩进线设置
set list
set lcs=tab:\|\ 

" 设置Rubytest
let g:rubytest_cmd_spec = "rspec -fd %p"

" 设置SuperTab
let g:SuperTabRetainCompletionType="context"

" 设置Powerline
set encoding=utf-8
set laststatus=2
set t_Co=256   
" 下面这一句是设置主题，如果不用这一句，就不会出现乱码
let g:Powerline_symbols= "fancy"

" 设置airline主题，以及字体
let g:airline_theme='laederon'
let g:airline_powerline_fonts=1
"setfillchars+=stl:\ ,stlnc:\

" 设置MacVim字体
"se guifont=Source\ Code\ Pro\ for\ Powerline:h14  
se guifont=CosmicSansNeueMono:h17

" 设置Rsense 插件
"let g:rsenseHome = "/usr/lib/rsense-0.3"　

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
		exec "!js %"
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
" 设置javascript字典文件
autocmd FileType javascript set dictionary=~/.vim/bundle/vim-javascript/dict/javascript.dict
autocmd FileType html set dictionary=~/.vim/bundle/vim-javascript/dict/javascript.dict

" 设置Ruby字典文件
autocmd FileType ruby set dictionary=~/.vim/bundle/vim-ruby/dict/ruby.dict
" html/xhtml editing in vim (写完>后自动不全结束标签)

function! InsertHtmlTag()
	let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
	normal! a>
	let save_cursor = getpos('.')
	let result = matchstr(getline(save_cursor[1]), pat)
	"if (search(pat, 'b', save_cursor[1]) && searchpair('<','','>', 'bn',0,getline('.')) > 0)
	if (search(pat, 'b', save_cursor[1]))
		normal! lyiwf>
		normal! a</
		normal! p
		normal! a>
	endif
	:call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
endfunction
inoremap > <ESC>:call InsertHtmlTag()<CR>a

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"解决vim的复制问题
nnoremap <F2> :set invpaste paste?<CR>
imap <F2></F2> :set invpaste paste?<CR>
set pastetoggle=<F2></F2></CR><C-O></F2></CR></F2>

"indentLine设置
let g:indentLine_char = '¦'
let g:indentLine_color_gui = '#A4E57E'
