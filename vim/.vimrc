"Specify Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
set nocompatible
" let mapleader = "\"
call plug#begin('~/.vim/plugged')

" vim-go
Plug 'fatih/vim-go', { 'tag': '*' }

" fugitive
Plug 'tpope/vim-fugitive'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-floaterm
Plug 'voldikss/vim-floaterm'

" gruvbox
Plug 'morhetz/gruvbox'

" nerdcommenter
Plug 'scrooloose/nerdcommenter'

" undotree
Plug 'mbbill/undotree'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }

" markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" grep
Plug 'dkprice/vim-easygrep'


" Initialize plugin system
call plug#end()


set number
set relativenumber
set showcmd
set hlsearch
set incsearch
set title
set wildmenu
set wildmode=longest:list,full
set wildignore=*.dll,*.exe,*.jpg,*.gif,*.png
set ignorecase
set smartcase

"=======设置代码格式化规则
set autoindent
set smartindent     " indent when
set tabstop=2       " tab width
set softtabstop=2   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space
set scrolloff=7



" 鼠标指针样式 和终端有关
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"




" 設定色調
colorscheme gruvbox
set background=dark    " 暗色系
" set background=light   " 亮色系

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" grep.vim 超强全文搜索
let Grep_Default_Filelist = '*'
nnoremap  <leader>g :Grep<SPACE>

" 开启项目目录
map <silent> <leader>t :NERDTreeToggle<CR>



noremap <silent> <leader>r :source /home/srillia/.vimrc<CR>
" 设置位移




noremap <leader>f :FZF<CR>

" Floaterm 快捷键
nnoremap   <silent>   <F8>   :FloatermToggle<CR>
tnoremap   <silent>   <F8>   <C-\><C-n>:FloatermToggle<CR>



"coc 配置 use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()