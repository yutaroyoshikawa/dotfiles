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
