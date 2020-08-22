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
Plugin 'alvan/vim-closetag'
Plugin 'rust-lang/rust.vim'
Plugin 'Yggdroot/indentLine'

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

set hidden

" 列を強調表示
set cursorline

set cursorcolumn

set virtualedit=all

set showcmd

"===scripts===

if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif

noremap j gj
noremap k gk

"===color===
colorscheme slate
highlight CursorColumn guibg=#00A000
highlight LineNr ctermfg=Gray
hi CursorLineNr term=bold cterm=NONE ctermfg=Red ctermbg=NONE

" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE

"===Rust===
let g:rustfmt_autosave = 1

"===vim-closetag===
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.vue'

"===vim-lsp===
nnoremap <silent><C-h> :LspHover<CR>
nnoremap <silent><C-h><C-j> :LspDefinition<CR>

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
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

"===ale===
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier-eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1

"===vim-GLSL===
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
