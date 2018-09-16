""""""""""""""""""""""""""
"        vim-plug        "
""""""""""""""""""""""""""

" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
" Install plugin with ':PlugInstall'
call plug#begin('~/.vim/plugged')

" Allows vim-sessions
Plug 'tpope/vim-obsession'
" light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
" insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" file system explorer
Plug 'scrooloose/nerdtree'
" reload file if extern modified
Plug 'djoshea/vim-autoread'
" navigate seamlessly between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

""""""""""""""""""""""""""
"       lightline        "
""""""""""""""""""""""""""

" show status line
set laststatus=2
" disable standard mode indicator
set noshowmode
" make mode indicator coloured
if !has('gui_running')
    set t_Co=256
endif

""""""""""""""""""""""""""
"   custom properties    "
""""""""""""""""""""""""""

" Shows number on lines
:set number
" Replace <tab> by whitespace
:set expandtab
:set tabstop=4
:set shiftwidth=4

""""""""""""""""""""""""""
"     Key-Mappings       "
""""""""""""""""""""""""""

:imap jk <Esc>
map <C-d> :NERDTreeToggle<CR>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
