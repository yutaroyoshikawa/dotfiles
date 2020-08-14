"===Vundle===
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/nerd-fonts'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'mattn/vim-lsp-icons'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'hrsh7th/vim-vsnip-integ'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'styled-components/vim-styled-components'
Plugin 'mxw/vim-jsx'
Plugin 'simeji/winresizer'
Plugin 'cohama/lexima.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tikhomirov/vim-glsl'

call vundle#end()
filetype plugin indent on

"===base set===
set number

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu

" インデント幅
set shiftwidth=2

" タブキー押下時に挿入される文字幅を指定
set softtabstop=2

" タイトルを表示
set title

" シンタックスハイライト
syntax on

" 列を強調表示
set cursorline

set cursorcolumn

"===color===
colorscheme slate
highlight CursorLine guibg=#000000
highlight CursorColumn guibg=#00A000
highlight LineNr ctermfg=Gray
hi CursorLineNr term=bold cterm=NONE ctermfg=Red ctermbg=NONE

"===NERDTree===
nnoremap <silent><C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_denite=1

"===NERDCommenter===
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'

"===vim-airline===
let g:airline_theme = 'deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"===ale===
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier-eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

"===vim-GLSL===
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
