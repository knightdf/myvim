""""""""""""""""""Plugins"""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " scripts on GitHub repos
"Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'davidhalter/jedi'
Plugin 'sickill/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'wincent/command-t'
"Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'pedrohdz/vim-yaml-folds'    " yaml
Plugin 'elzr/vim-json'              " json
Plugin 'Yggdroot/indentLine'        " show indent level
Plugin 'derekwyatt/vim-scala'
Plugin 'othree/xml.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'  " https://editorconfig.org/
Plugin 'rizzatti/dash.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'wannesm/wmgraphviz.vim'     " Graphviz
Plugin 'aklt/plantuml-syntax'       " Plantuml
Plugin 'mattn/emmet-vim'            " HTML & CSS
Plugin 'pangloss/vim-javascript'    " JavaScript support
Plugin 'leafgarland/typescript-vim' " TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plugin 'posva/vim-vue'              " Vue.js syntax
Plugin 'nvie/vim-flake8'
"Plugin 'wakatime/vim-wakatime'
Plugin 'ryanoasis/vim-devicons'     " https://github.com/ryanoasis/vim-devicons
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
" " scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'ZoomWin'
Plugin 'DoxygenToolkit.vim'
Plugin 'DrawIt'
Plugin 'Jinja'
" " scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" " ...

" All of your Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" "
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible "不要使用vi的键盘模式，而是vim自己的

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
    colorscheme torte    "solarized,desert,torte  主题颜色
else
    set background=dark    "背景色
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized   "solarized,desert,monokai  主题颜色
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"language messages zh_CN.utf-8      " 解决consle输出乱码
language messages en_US.utf-8
"set background=dark        "背景色
set t_Co=256            "256色
set guioptions-=T       " 隐藏工具栏
set guifont=Monaco\ 10          " 字体 && 字号
set noerrorbells        " 关闭错误提示音
set novisualbell        " 不要闪烁报警
set nobackup            " 不要备份文件
set linespace=0         " 字符间插入的像素行数目
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示
set scrolloff=3         " 光标移动到buffer的顶部和底部时保持3行距离
set mouse=v             " 可以在buffer的任何地方 ->
set cursorline                  " 突出显示当前行
set nu                     " 显示行号
set whichwrap+=<,>,h,l        " 允许backspace和光标键跨越行边界
set completeopt=longest,menu    "按Ctrl+N进行代码补全
set keymodel=startsel,stopsel   "使用“Shift + 方向键”选择文本,否则代表向指定方向跳一个单词
set list                " 显示Tab符，->
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set autoindent          " 自动对齐（继承前一行的缩进方式）
set smartindent         " 智能自动缩进（以c程序的方式）
set tabstop=4           " 制表符为4
set softtabstop=4        " 敲入tab键时实际占有的列数
set shiftwidth=4        " 换行时行间交错使用4个空格
"set noexpandtab        " 不要用空格代替制表符
set expandtab            " 用空格代替制表符
set cindent                " 使用C样式的缩进
set smarttab            " 在行和段开始处使用制表符
set nowrap              " 不要换行,显示一行
"set ambiwidth=double    " Unicode中,防止特殊符号无法正常显示,使用宽字符
set selection=inclusive    "指定在选择文本时，光标所在位置也属于被选中的范围。如果指定 selection=exclusive 的话，可能会出现某些文本无法被选中的情况。
set selectmode=mouse,key        " 在工作区双击鼠标定位）
set backspace=indent,eol,start      "解决退格键不能用得问题
" set tab=2 in yaml, scala, ...
autocmd FileType yaml,scala,html,typescript set sw=2
autocmd FileType yaml,scala,html,typescript set ts=2
autocmd FileType yaml,scala,html,typescript set sts=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 状态行(命令行)的显示
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cmdheight=1          " 命令行（在状态行下）的高度，默认为1，这里是2
set ruler                " 右下角显示光标位置的状态行
set laststatus=2         " 开启状态栏信息
set wildmenu             " 增强模式中的命令行自动完成操作


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8      " 设置vim的工作编码为utf-8，如果源文件不是此编码，vim会进行转换后显示
set fileencoding=utf-8      " 让vim新建文件和保存文件使用utf-8编码
set fileencodings=utf-8,gbk,gb18030,cp936,latin-1     "打开文件的时候进行解码的猜测列表
"filetype on                  " 侦测文件类型
"filetype indent on               " 针对不同的文件类型采用不同的缩进格式
"filetype plugin on               " 针对不同的文件类型加载对应的插件
syntax enable
syntax on                    " 语法高亮
"cd /home/ray/Code             " 默认保存路径,会影响默认工作路径
autocmd FileType crontab setlocal backupcopy=yes    " solve vi/vim editing crontab in osx problem

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 查找
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set incsearch                " 开启实时搜索功能


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语言的编译和运行
" 支持的语言：java         F5编译(保存+编译)  F6运行
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! CompileCode()
    exec "w"
    if &filetype == "java"
        exec "!javac -encoding utf-8 %"
    endif
endfunc
func! RunCode()
    if &filetype == "java"
        exec "!java -classpath %:p:h %:t:r"
    endif
endfunc

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 实用功能
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--------启用代码折叠，用空格键来开关折叠
set foldenable           " 打开代码折叠
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

"remember last update or view postion"
" Only do this part when compiled with support for autocommands
if has("autocmd")
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \ exe "normal g'\"" |
                \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','     "定义<leader>键

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TlistToggle<CR>
nmap <F4> :WMToggle<CR>

" F5 保存+编译
map <F5> :call CompileCode()<CR>
"  F6 运行
map <F6> :call RunCode()<CR>

" YCM
nnoremap <leader>1 :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>2 :YcmCompleter GoToDefinition<CR>
nnoremap <leader>3 :YcmCompleter GoToDefinitionElseDeclaration<CR>

" format json
map <F9> <ESC>:%!python3 -m json.tool<CR>

" vim-flake8
autocmd FileType python map <buffer> <F10> :call Flake8()<CR>

" coc
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Resolve workspace folder
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'setup.cfg']

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
" Formatting entire document.
nmap <leader>F :call CocAction('format')<CR>
" Organize imports of the current buffer
nmap <leader>O :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nmap <leader>e :CocCommand explorer<CR>
" coc-swagger
command -nargs=0 Swagger :CocCommand swagger.render
" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x <Plug>(coc-convert-snippet)
" coc end

" FZF
nmap <leader>z :FZF<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" taglist
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" NERDTree
let g:NERDTree_title="[NERDTree]"

" winManager
let g:winManagerWindowLayout="NERDTree|TagList"
let g:winManagerWidth = 30

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

" supertab
"let g:SuperTabDefaultCompletionType="context"

" syntastic
let g:syntastic_python_checkers = ['flake8', 'mypy', 'python']

" vim-lua, enable omni completion
let g:lua_complete_omni = 1
let g:lua_safe_omni_modules = 1

" vim-airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline-tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" airline-ycm
let g:airline#extensions#ycm#enabled = 1

"DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@Synopsis "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Return "
let g:DoxygenToolkit_blockHeader="==="
let g:DoxygenToolkit_blockFooter="==="
let g:DoxygenToolkit_authorName="Ray/rayydl@gmail.com"

" nerdcommenter
"let g:NERDCustomDelimiters = {'lua':{'left': '--[[', 'right': ']]'}}

" vim-markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" vim-markdown-toc
let g:vmt_cycle_list_item_markers = 1

" gradle
au BufNewFile,BufRead *.gradle setf groovy

" vue
autocmd FileType vue syntax sync fromstart
"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
let g:vue_disable_pre_processors=1

" wmgraphviz.vim
let g:WMGraphviz_output = "png"

" line indent level
"let g:indentLine_char = '⦙'
let g:indentLine_char_list = ['❘', '¦', '┆', '┊']
