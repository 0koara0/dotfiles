"#####表示設定#####
set number "行番号を表示する

set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

inoremap <C-c> <ESC>

set autoindent 
set shiftwidth=4
set expandtab
imap <C-j> <C-[>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

    filetype off

    if has('vim_starting')
          if &compatible
                  set nocompatible               " Be iMproved
                    endif

                      set runtimepath+=~/.vim/bundle/neobundle.vim
                      endif

                      call neobundle#begin(expand('~/.vim/bundle/'))

                      " originalrepos on github
                      NeoBundle 'Shougo/neobundle.vim'
                      NeoBundle 'Shougo/neocomplcache'
                      NeoBundle 'Shougo/vimproc', {
                            \ 'build' : {
                                    \ 'windows' : 'make -f make_mingw32.mak',
                                        \ 'cygwin' : 'make -f make_cygwin.mak',
                                            \ 'mac' : 'make -f make_mac.mak',
                                                \ 'unix' : 'make -f make_unix.mak',
                                                  \ },
                                                    \ }
                                                    NeoBundle 'VimClojure'
                                                    NeoBundle 'Shougo/vimshell'
                                                    NeoBundle 'Shougo/unite.vim'
                                                    NeoBundle 'Shougo/neocomplcache'
                                                    NeoBundle 'Shougo/neosnippet'
                                                    NeoBundle 'jpalardy/vim-slime'
                                                    NeoBundle 'scrooloose/syntastic'
                                                    NeoBundle 'Shougo/vimfiler.vim'
                                                    NeoBundle 'itchyny/lightline.vim'
                                                    NeoBundle 't9md/vim-textmanip'

                                                    NeoBundle 'Shougo/unite.vim'
                                                    NeoBundle 'ujihisa/unite-colorscheme'
                                                    NeoBundle 'tomasr/molokai'
                                                    ""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

                                                    call neobundle#end()

                                                    filetype plugin indent on     " required!
                                                    filetype indent on
                                                    syntax on

                                                    NeoBundleCheck

"" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" 自動コメントアウトしない
augroup auto_comment_off
    autocmd!
        autocmd BufEnter * setlocal formatoptions-=r
            autocmd BufEnter * setlocal formatoptions-=o
            augroup END
