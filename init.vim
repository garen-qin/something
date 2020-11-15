"显示行号
set number

"缩进间隔
set shiftwidth=2
set tabstop=2

"忽略大小写
set ignorecase

"智能大小写
set smartcase

"相对行号
set relativenumber

"高亮当前行
set cursorline

"normal模式启用鼠标
set mouse=n

"背景颜色
"set termguicolors

"不要产生交换文件
set noswapfile


"------------------------------------------插件开始---------------------------------------------"
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'mxw/vim-jsx'
Plug 'mhinz/vim-startify'
Plug 'pangloss/vim-javascript'
Plug 'yggdroot/indentline'
Plug 'Chiel92/vim-autoformat'
call plug#end()
"-------------------------------------------插件结束--------------------------------------------"


"leader键配置
let mapleader="\<Space>"

"缩进符号
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"coc插件
let g:coc_global_extensions = ['coc-json', 'coc-explorer', 'coc-html', 'coc-emmet']

"airline显示顶部buffer
let g:airline#extensions#tabline#enabled=1
"airline字体图标
let g:airline_powerline_fonts=1
"airline顶部标签显示编号
let g:airline#extensions#tabline#buffer_nr_show=1

"打开浮动terminal
let g:floaterm_keymap_toggle = '<f3>'


"颜色主题
colorscheme onedark

"透明背景
"hi Normal ctermbg=none
hi Normal ctermfg=252 ctermbg=none


"------------------------------插入模式------------------------------"
inoremap <C-p> <Esc>ka
inoremap <C-n> <Esc>ja
inoremap <C-f> <Esc>la
inoremap <C-b> <Esc>ha
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap <M-f> <Esc>ea
inoremap <M-b> <Esc>bi
inoremap <C-h> <Esc>s
inoremap <C-k> <Esc>ld$a
inoremap <C-u> <Esc>d^s
inoremap <C-w> <Esc>dawa
"------------------------------插入模式------------------------------"


"------------------------------标签页的切换--------------------------"
nnoremap <silent><Leader>1 :b1<cr>
nnoremap <silent><Leader>2 :b2<cr>
nnoremap <silent><Leader>3 :b3<cr>
nnoremap <silent><Leader>4 :b4<cr>
nnoremap <silent><Leader>5 :b5<cr>
nnoremap <silent><Leader>6 :b6<cr>
nnoremap <silent><Leader>7 :b7<cr>
nnoremap <silent><Leader>8 :b8<cr>
nnoremap <silent><Leader>9 :b9<cr>
"------------------------------标签页的切换--------------------------"


"easymotion前缀键
map <Leader> <Plug>(easymotion-prefix)

"对齐插件
nnoremap <Leader>a <Plug>(EasyAlign)

"打开vim配置文件
nnoremap <silent><Leader>rc :e $MYVIMRC<cr>

"取消搜索的高亮
nnoremap <silent><Leader>h :nohlsearch<cr>

"打开资源管理器
nnoremap <silent><f2> :CocCommand explorer<cr>

"格式化代码
noremap <silent><f4> :Autoformat<cr>

"让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC





"Default Mapping      | Details
"---------------------|----------------------------------------------
"<Leader>f{char}      | Find {char} to the right. See |f|.
"<Leader>F{char}      | Find {char} to the left. See |F|.
"<Leader>t{char}      | Till before the {char} to the right. See |t|.
"<Leader>T{char}      | Till after the {char} to the left. See |T|.
"<Leader>w            | Beginning of word forward. See |w|.
"<Leader>W            | Beginning of WORD forward. See |W|.
"<Leader>b            | Beginning of word backward. See |b|.
"<Leader>B            | Beginning of WORD backward. See |B|.
"<Leader>e            | End of word forward. See |e|.
"<Leader>E            | End of WORD forward. See |E|.
"<Leader>ge           | End of word backward. See |ge|.
"<Leader>gE           | End of WORD backward. See |gE|.
"<Leader>j            | Line downward. See |j|.
"<Leader>k            | Line upward. See |k|.
"<Leader>n            | Jump to latest "/" or "?" forward. See |n|.
"<Leader>N            | Jump to latest "/" or "?" backward. See |N|.
"<Leader>s            | Find(Search) {char} forward and backward.
"                     | See |f| and |F|.


"gk": "expandablePrev",
"gj": "expandableNext",
"*": "toggleSelection",
"<tab>": "actionMenu",
"h": "collapse",
"l": ["expandable?", "expand", "open"],
"J": ["toggleSelection", "nodeNext"],
"K": ["toggleSelection", "nodePrev"],
"gl": "expandRecursive",
"gh": "collapseRecursive",
"o": ["expanded?", "collapse", "expand"],
"<cr>": ["expandable?", "cd", "open"],
"e": "open",
"s": "open:split",
"S": "open:split:plain",
"E": "open:vsplit",
"t": "open:tab",
"<bs>": "gotoParent",
"gp": "preview:labeling",
"y": "copyFilepath",
"Y": "copyFilename",
"c": "copyFile",
"x": "cutFile",
"p": "pasteFile",
"d": "delete",
"D": "deleteForever",
"a": "addFile",
"A": "addDirectory",
"r": "rename",
".": "toggleHidden",
"R": "refresh",
"?": "help",
"q": "quit",
"<esc>": "esc",
"X": "systemExecute",
"gd": "listDrive",
"f": "search",
"F": "searchRecursive",
"gf": "gotoSource:file",
"gb": "gotoSource:buffer",
"[[": "sourcePrev",
"]]": "sourceNext",
"[d": "diagnosticPrev",
"]d": "diagnosticNext",
"[c": "gitPrev",
"]c": "gitNext",
"<<": "gitStage",
">>": "gitUnstage"
