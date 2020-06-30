set number                 "显示行号
set relativenumber number  "相对行号
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber

" 插入/普通模式行号区分
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

" set cursorline           "突出显示当前行
set showmatch              "显示匹配的括号
set scrolloff=3            "距离顶部和底部3行"
set encoding=utf-8         "编码
set fenc=utf-8             "编码
set mouse=a                "启用鼠标
set hlsearch               "搜索高亮
set autoindent             "自动缩进，每行缩进值与上行相等

set expandtab              "空格替换tab
set shiftwidth=4
set tabstop=4              

syntax on                  "语法高亮

filetype off               "required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vim/.vimrc.bundles"))
  source ~/.vim/.vimrc.bundles
endif

if filereadable(expand("~/.vim/.vimrc.keymap"))
  source ~/.vim/.vimrc.keymap
endif
