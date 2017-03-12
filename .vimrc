"语法高亮
syntax enable
syntax on

"ctags 配置，使用此功能，需要安装 ctags 软件
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

set tags+=~/.vim/tags/cpp_src/tags " 设置tags搜索路径
set tags+=~/study/walk/tags " 设置tags搜索路径
set tags+=/Users/shaoshuai/study/rc/RouteCity/tags
set wildmode=longest,list " Ex命令自动补全采用bash方式"

" pathongen
execute pathogen#infect()
filetype plugin indent on

"taglist 配置，用户显示文件函数与变量
":help taglist.txt
map <C-t> :TlistToggle<CR>
let Tlist_Sort_Type="name"
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表
"let Tlist_Auto_Open=1 "让taglist 在vim打开时，自动打开
let Tlist_Auto_Update=1 "让taglist 在文件更新时，自动更新
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let winManagerWindowLayout = 'FileExplorer|TagList'
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 "实时更新tags
"let Tlist_Inc_Winwidth=0"

map <C-n> :NERDTree<CR>

"need install software cscope, use 'brew install cscope'
"cscope配置如下, use 'cscope -Rbq' to create file cscope.out. 
set cscopequickfix=s-,c-,d-,i-,t-,e-
cs add ~/study/rc/RouteCity/cscope.out ~/study/rc/RouteCity/

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i^ <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>

"quickfix conf
":help quickfix
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
nmap <F8> :botright cwindow<cr>
nmap <F9> :ccl<cr>


"设置导航开启文件
let g:miniBufExplMapCTabSwitchBufs = 1


" omnicppcomplete
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2 " search namespaces in the current buffer and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"

"set encoding=gbk 
"set fileencodings=ucs-bom,utf-8,cp936
"set termencoding=gbk
