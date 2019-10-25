" Disable welcome screen
set shortmess+=I

" Load vim-plug
call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'chaoren/vim-wordmotion'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'
Plug 'wellle/targets.vim'
call plug#end()

" File types
filetype on
filetype indent on
filetype plugin on
autocmd FileType gitcommit set textwidth=70
autocmd User Rails map <buffer> <F5> :Rails<CR>

" Default indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set textwidth=100

" Line numbers
set number

" Highlight current line only in current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Scroll buffer
set scrolloff=3

" Search
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" Status bar
set showcmd
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'palenight',
  \ }

" Syntax highlighting
set termguicolors
set background=dark
colorscheme palenight

" Highlight characters past 100 columns
" http://blog.ezyang.com/2010/03/vim-textwidth/
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%100v.*/
augroup END

" Remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" fzf
nnoremap <silent> <C-t> :FZF<CR>

" netrw
let g:netrw_banner = 0 " Hide banner
let g:netrw_liststyle = 3 " Tree view
