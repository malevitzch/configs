let g:config_version = "1.0.2"

" disable the vi compatibility mode just in case
set nocompatible

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

" display config version on init
autocmd VimEnter * echo "Config version: " . g:config_version
