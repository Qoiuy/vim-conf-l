"{{{ 基本设置
set number " 显示行号
set hlsearch " 高亮搜索
"}}}

"{{{ 主题颜色
set t_Co=256 " 开启256色支持
syntax on " 语法高亮
syntax reset " 语法高亮
set background=dark " 使用暗色背景
color torte " 配色方案
"}}}

"{{{ 标尺状态栏
set ruler " 显示光标所在位置
set laststatus=2 " 显示文件状态
set cursorline " 高亮当前行
"}}}

"{{{ 缩进/换行/空白/行号/折叠/滚动
" 缩进
set autoindent " 开启新行时，自动缩进
set smartindent " 开启新行时，智能缩进
set cindent " C程序自动缩进

" 换行
set nowrap " 不折行显示
set lbr " 不在单词中间断行

" 空白
set shiftwidth=4 " 缩进空白数
set tabstop=4 " Tab所占空格数
set expandtab " 将Tab展开为空格
set softtabstop=4 " 配合tabstop
set listchars=tab:▸\ ,trail:▫ " 指定Tab和结尾空白字符
autocmd FileType make set noexpandtab
set backspace=eol,start,indent " 插入模式下使用 <BS>、<Del> <C-W> <C-U>
"}}}

"{{{ 代码折叠
set foldenable " 开启代码折叠
set foldmethod=syntax " 根据语法折叠代码
set foldlevel=99 " 默认的折叠级别，为0则表示函数级别的折叠
set foldcolumn=0 " 折叠线所占的宽度
"}}}

"{{{ 用空格键开关折叠代码
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>
"}}}

"{{{ 编码及存储
set fileencodings=utf-8 " 文件编码，强制UTF-8
set encoding=utf-8 " vim内部编码
set nobomb " 不使用bom编码
set nobackup " 不使用备份文件
set noswapfile " 不产生交换文件
set autoread " 自动同步外部修改
set autowrite " 自动把内容写回文件
"}}}

"{{{ 窗口移动
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
"}}}

"{{{ 插入模式下光标移动
inoremap <C-o> <down>
inoremap <C-p> <up>
"}}}

"{{{ NERDTree文件浏览器插件
autocmd VimEnter * NERDTree " 自动加载
autocmd VimEnter * wincmd p " 光标放到打开的文件
let NERDTreeWinSize = 25 " 文件浏览窗口大小
"}}}

"{{{ Tabbar顶部选项卡
let g:Tb_MaxSize = 3 " 最多三排选项卡
let g:Tb_TabWrap = 1 " 每个选项卡之间间隔
"}}}

"{{{ Buffers/Tab操作
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>
"}}}

"{{{ F1 --- F12快捷键
nnoremap    <F4>         :!ctags -R<cr>
