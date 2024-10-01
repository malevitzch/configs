let g:config_version = "1.0.4"

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

" set tab width to 2 spaces and replace tab with spaces
set tabstop=2
set expandtab

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
map <Space> <Leader>

" <Space>t keybind now toggles between relative and absolute line numbers
nnoremap <Leader>t :set invrelativenumber<CR>
nnoremap <Leader>v viw

" added keybinds to move lines up and down
" - moves line down, _ moves the line up
nnoremap - ddjP
nnoremap _ ddkP

" display config version on init
autocmd VimEnter * echo "Config version: " . g:config_version
