set nocompatible
set number
set title
syntax on
set tabstop=4
set shiftwidth=4
set smartindent
set showmatch
set laststatus=3

nnoremap <Space>. :<C-u>tabedit $MYVIMRC
"ノーマルモードで半角/全角ボタンを無効化
nnoremap <silent> <C-^> <Nop>
set backspace=indent,eol,start
"IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
	hightlight Cursor guifg=NONE  guibg=Green
	hightlight CursorIM guifg=NONE guibg=Purple
endif
