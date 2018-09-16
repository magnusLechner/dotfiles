""""""""""""""""""""""""""
"        vim-plug        "
""""""""""""""""""""""""""

" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
" Install plugin with ':PlugInstall'
call plug#begin('~/.vim/plugged')

" Plugins for rust-lang
Plug 'rust-lang/rust.vim'
Plug 'valloric/YouCompleteMe'

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
"       rust             "
""""""""""""""""""""""""""

" YouCompleteMe
let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.5.0/src'

" rustfmt: format on save
let g:rustfmt_autosave = 1


" Syntastic: recommended settings (for Syntax-Checking)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}  "leads to problems with tagbar
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
