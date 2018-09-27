" My Vim Settings.
syntax on
colorscheme desert
filetype on
filetype indent on

"set nu
" 折り返さない
set nowrap
" 表示幅
set tabstop=2
" Tabキー押下時 カーソル移動幅
set softtabstop=2
" 自動インデント幅
set shiftwidth=2
" Tabキー押下 スペース
set expandtab
" 画面分割 右に開く
set splitright
" ステータスライン：ファイル名[変更?][読取専用?][文字コード][改行コード]カレント行/全体行,カラム
set statusline=%<%F\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v

" 絶対行数表示
set number
" 相対行数表示
set relativenumber
" カレント行ハイライト
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE

" 可視化
function! VimColors()
  highlight WhiteSpaceEOL ctermbg=red guibg=red
  highlight ZenkakuSpace ctermbg=green guibg=green
  highlight Tab ctermbg=blue guibg=blue
endfunction

if has('syntax')
  augroup VimColors
    autocmd!
    autocmd VimEnter,WinEnter * let w:m1 = matchadd('WhiteSpaceEOL', '\s\+$')
    autocmd VimEnter,WinEnter * let w:m2 = matchadd('ZenkakuSpace', '　')
    autocmd VimEnter,WinEnter * let w:m3 = matchadd('Tab', '\t')
  augroup END
  call VimColors()
endif
