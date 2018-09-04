" Used Plugin-Manager: vim-plug
" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'

" Install plugin with ':PlugInstall'
call plug#begin('~/.vim/plugged')

" Plugins for rust-lang
"Plug 'majutsushi/tagbar'
"Plug 'rust-lang/rust.vim'
"Plug 'valloric/YouCompleteMe'

" Allows vim-sessions
Plug 'tpope/vim-obsession'

call plug#end()

" rustfmt: format on save
"let g:rustfmt_autosave = 1

" tagbar: point to ctags executable if not in $PATH
"let g:tagbar_ctags_bin = /to/path//of/ctags

" Syntastic: recommended settings (for Syntax-Checking)
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}  "leads to problems with tagbar
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Further custom properties
" Shows number on lines
:set number
" Replace <tab> by whitespace
:set expandtab
:set tabstop=4
:set shiftwidth=4

" Key-Mappings
":nmap <F8> :TagbarToggle<CR> 
:imap jk <Esc>
