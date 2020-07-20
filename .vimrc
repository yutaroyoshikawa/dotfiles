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

" markdownのハイライトを有効にする
set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ale
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/nerd-fonts'

call vundle#end()
filetype plugin indent on
