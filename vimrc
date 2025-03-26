set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
:set autoindent
:set expandtab
:set shiftround
:set shiftwidth=4
:set smarttab
:set tabstop=4
:set linebreak
:set scrolloff=10
:set sidescrolloff=7
:syntax enable
:set wrap
:set wildmenu
:set mouse=a
" Setup the status bar
:set laststatus=2
:set statusline=
:set statusline+=\ %F "for path info
:set statusline+=\ [%{strlen(&fenc)?&fenc:'none'},\ %{&ff}] "file format
:set statusline+=\ %y "filetype
:set statusline+=\ %m "modified
:set statusline+=\ %r "read only flag
:set statusline+=\ %= "align left
:set statusline+=Line:%l/%L[%p%%]
:set statusline+=\ Col:%c
:set statusline+=\ Buf:%n
:set statusline+=\ ascii:[%b][0x%B]\ 
" End status bar setup
" Setup colors
:set termguicolors
:hi LineNr guibg=#363636 guifg=#ffff99
:hi Normal ctermfg=white ctermbg=black guibg=#262626 guifg=#ffffcc
:hi StatusLine ctermfg=darkgray guifg=#151515 guibg=#ffffff  " inactive status line colors
:hi StatusLineNC ctermfg=white guifg=#202020  guibg=#ffffff   " sets active status line colors
:hi visual guibg=#00334d
:hi nontext guifg=#336699
:hi vertsplit guifg=#0d0d0d guibg=#333333
:hi matchparen guibg=#b35900

" remap some buttons
:nnoremap G Gzz
