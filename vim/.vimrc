let g:config_version = "2.0.1"

" disable the vi compatibility mode just in case
set nocompatible

" enable truecolor
set termguicolors

" color scheme changes
highlight Visual guibg=#454545

" enable syntax highlighting and line numbers
filetype on
syntax on
set number relativenumber

source ~/.colorscheme.vim
"colorscheme tokyonight_ripoff

" set tab width to 2 spaces and replace tab with spaces
set tabstop=2
set shiftwidth=2
set expandtab

" add automatic indentation
set autoindent

" some command bar and search settings
set incsearch
set showcmd
set showmode
set showmatch
set hlsearch

" menu for file name completion
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" enable mouse
set mouse=a

" set leader key to space
let mapleader="\<Space>"

" <Space>t keybind now toggles between relative and absolute line numbers
nnoremap <Leader>t :set invrelativenumber<CR>
nnoremap <Leader>v viw

" - moves line down, _ moves the line up
nnoremap <Leader>- ddjP
nnoremap <Leader>_ ddkP

" maps the ctrl+d keybind to delete a line in insert mode
imap <c-d> <esc>ddi


" display config version on init
autocmd VimEnter * redraw | echo "Config version: " . g:config_version

" window resizing keybinds
nnoremap <C-Up>    :resize +2<CR>
nnoremap <C-Down>  :resize -2<CR>
nnoremap <C-Left>  :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" plugins
if ! empty(globpath(&rtp, 'autoload/plug.vim'))
  call plug#begin('~/.vim/plugged')

  call plug#end()
endif
