"#####表示設定#####
set number "行番号を表示する

set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch   " 検索結果をハイライト
nnoremap <silent> <ESC><ESC> :nohlsearch<CR> " ESCキー連打でハイライトを消す

inoremap <C-c> <ESC>

set shiftwidth=4
set expandtab
imap <C-j> <C-[>

" 自動コメントアウトしない
augroup auto_comment_off
    autocmd!
        autocmd BufEnter * setlocal formatoptions-=r
            autocmd BufEnter * setlocal formatoptions-=o
            augroup END

" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" ステータスラインを常に表示
set laststatus=2
" 入力中のコマンドをステータスに表示する
set showcmd
