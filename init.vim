lua require('plugins')
" set runtimepath^=~/.local/share/nvim/

set nu
set relativenumber
set nocompatible
set hidden
set hlsearch
set backspace=indent,eol,start
set shiftwidth=2
let mapleader = " "
 
" ALE linter settings 
" let g:ale_fix_on_save = 1    
" let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0
" let g:rustfmt_autosave_if_config_present = 1 

" Font Size
set guifont=Mono\ Lisa:h10

" Colorscheme
set termguicolors
" let ayucolor="dark"
" colorscheme peachpuff
" Exit terminal mode with ESC
:tnoremap <Leader>tq <C-\><C-n>
" Keybindings
map \ <Plug>(easymotion-prefix)
inoremap jk <Esc>

" Files 
:nnoremap <Leader>pf :GFiles<CR>
:nnoremap <Leader>gs :GFiles?<CR>
:nnoremap <Leader>ff :Files<CR>
:nnoremap <Leader>bB :Buffers<CR>
" Git
:nnoremap <Leader>gc :Git commit -a<CR>
:nnoremap <Leader>gl :Git log --oneline<CR>
:nnoremap <Leader>gg :Git<CR>
"  Windows
:nnoremap <Leader><Tab>n :tabedit<CR>
:nnoremap <Leader>wh <C-w>h
:nnoremap <Leader>wj <C-w>j
:nnoremap <Leader>wk <C-w>k
:nnoremap <Leader>wl <C-w>l

:nnoremap <Leader>wv <C-w>v
:nnoremap <Leader>ws <C-w>s
:nnoremap <Leader>wq :q<CR>
:nnoremap <Leader>w= <C-w>=
:nnoremap <Leader>wL <C-w>>2
:nnoremap <Leader>wH <C-w><2
:nnoremap <Leader>wJ <C-w>+2
:nnoremap <Leader>wK <C-w>-2
" Buffers
:nnoremap <Leader>bn :bnext<CR>
:nnoremap <Leader>bp :bprevious<CR>
:nnoremap <Leader>bk :Bwipeout<CR>

