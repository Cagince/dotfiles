" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Javascript/Typescript
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'mxw/vim-jsx'


Plugin 'Quramy/tsuquyomi' " @todo check navigations:  https://github.com/Quramy/tsuquyomi#navigations

" Autocomplete & Snipplets
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'


" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'


" vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Rust
Plugin 'rust-lang/rust.vim'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" Put your non-Plugin stuff after this line

colorscheme focuspoint
"colorscheme badwolf

let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr> " edit .vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr> " source .vimrc



set nocompatible              " be iMproved, required
filetype off                  " required
filetype indent on
filetype plugin on
syntax on

set completeopt+=preview

set viminfo^=!
set visualbell                "blink instead of beep
set encoding =utf-8

set listchars=tab:▸\ ,eol:¬,space:· " show Invisible Characters

set history=256 "things to remember
set autowrite "writes on make/shell commands
set timeoutlen=250 " time to wait after Esc
set showmatch " show matching parantheses
set laststatus=2 "always show status line
set backspace=2
set relativenumber
set ruler

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
" max width and coloring conventions
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",") 


" indenting logic
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent


"vim-airline buffer options
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='jellybeans'

" split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" Nerd Tree
map <C-n> :NERDTreeToggle<CR> 
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" Ale config 
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" JS/TS
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0


" JSX/TSX
" set filetypes as typescript.tsx
let g:typescript_indent_disable = 1
autocmd FileType typescript :set makeprg=tsc


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
"-> color highlighting
" dark red
hi tsxTagName guifg=#E06C75
" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic



" @todo:: customize typescript https://github.com/leafgarland/typescript-vim
let g:typescript_indent_disable = 1 " Typescrpt identation

