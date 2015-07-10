"neobundle setting
set nocompatible
filetype off            " for NeoBundle
 
if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
 
" ここから NeoBundle でプラグインを設定します
 
" NeoBundle で管理するプラグインを追加します。
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/unite.vim.git'
"コード補完
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'marcus/rsense'
NeoBundle 'supermomonga/neocomplete-rsense.vim'
" メソッド定義元へのジャンプ
NeoBundle 'szw/vim-tags'

"自動で閉じる
NeoBundle 'tpope/vim-endwise'
"rubyの保存時に自動文法チェック
NeoBundle 'scrooloose/syntastic'
call neobundle#end()

NeoBundleCheck
filetype plugin indent on       " restore filetype

"my setting
set nocompatible
set number
set title
set autoindent
"syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set showmatch
set laststatus=3
set tags
nnoremap <Space>. :<C-u>tabedit $MYVIMRC
"ノーマルモードで半角/全角ボタンを無効化
"nnoremap <silent> <C-^> <Nop>
"set backspace=indent,eol,start
""IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
		hightlight Cursor guifg=NONE  guibg=Green
			hightlight CursorIM guifg=NONE guibg=Purple
endif
" 想定される改行コードの指定する
set fileformats=unix,dos,mac

"Rsense
let g:rsenseHome = '/usr/local/lib/rsense-0.3'
let g:rsenseUseOmniFunc = 1
"neocomplete.vim
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#force_omni_input_patterns')
	  let g:neocomplete#force_omni_input_patterns = {}
  endif
  let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'
"fold(折りたたみ設定)
set foldmethod=manual
"autocmd FileType ruby :set foldmethod=indent
autocmd FileType ruby :set foldmethod=syntax
autocmd FileType ruby :set foldlevel=0
autocmd FileType ruby :set foldnestmax=2
