"----Basic Configure----
set encoding=utf-8 "file encoding

syntax on
set t_Co=256

"cancel backup
set nobackup
set noswapfile

set nu "show line number
set hls "set highlight search

set ruler "show current cursor position

"------------Plugin Manager---------
call plug#begin('~/.vim/plugged') " Specify a directory for plugins

Plug 'morhetz/gruvbox' " Colorscheme (includes its own airline theme)
colorscheme gruvbox
"set background=light
set background=dark

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column' "map ack to ag

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer',  'for': ['c', 'cpp'] }
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

Plug 'w0rp/ale'
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

Plug 'mhinz/vim-signify'

"cpp-enhanced-highlight
Plug 'octol/vim-cpp-enhanced-highlight'
""高亮类，成员函数，标准库和模板
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
""let g:cpp_experimental_template_highlight = 1

"locate file, show function list
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Initialize plugin system
call plug#end()

