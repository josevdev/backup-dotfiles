set encoding=utf-8
set background=dark
" set termguicolors
colorscheme dracula
" colo Benokai " color scheme

"set transparency=2
let g:rehash256 = 1
set guifont=Menlo:h20 " set font size
" set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h13 " set font size
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
syntax on " enable syntax highlighting
highlight iCursor guifg=Red guibg=Red
set guicursor=i:ver50-iCursor
set guioptions-=r "remove scrollbar
set cursorline
highlight CursorLine guibg=NONE
" autocmd InsertEnter * highlight  CursorLine guibg=Magenta guifg=White
autocmd InsertEnter * highlight  CursorLine guibg=Black
autocmd InsertLeave * highlight  CursorLine guibg=NONE
set omnifunc=syntaxcomplete#Complete

" augroup vimrc
"   au BufReadPre * setlocal foldmethod=indent
" augroup END

set scrolloff=100 " auto center the screen

set clipboard=unnamed " set copy paste from vim

" focus new split windows to below and right
set splitbelow
set splitright

"filetype indent on
set autoindent
"set smartindent

set showmatch " show matching brackets when cursor is over them

"" air-line
"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"
""" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
""" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set ignorecase " set case insensitive search
set smartcase
set hlsearch " set highlight search results
set incsearch " set incremental search

set guitablabel=%N/\ %t\ %M
"set relativenumber
set number
set ruler
set laststatus=2 " set status line
set linespace=7 " used for custom red status bar

" custom statusline, changes to red when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine guifg=Black guibg=Red
  au InsertLeave * hi StatusLine guifg=Gray guibg=Black
endif

let mapleader= " "

nmap f <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1
hi EasyMotionTarget guibg=yellow guifg=black
hi EasyMotionShade  guifg=dimgray
let g:EasyMotion_off_screen_search = 0

inoremap ddd <C-X><C-K>
inoremap ff <C-N>
inoremap FF <C-X><C-F>
inoremap LL <C-X><C-l>
inoremap gg <C-X><C-O>
inoremap vv <Esc>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
vnoremap vv <Esc>
cnoremap vv <Esc>
xnoremap vv <Esc>
snoremap vv <Esc>
onoremap vv <Esc>
noremap M <C-U>
noremap m <C-D>
"view all functions in document
noremap <Leader>funcs :g/^function
"format document
noremap <Leader>format gg=G
"display document info
noremap <Leader>info g<C-g>
" open file under cursor
noremap <Leader>open <C-w>gf
"noremap ! m
noremap ! ^
noremap 0 $
noremap \ /
noremap , .
" noremap \ <S-Tab>
" noremap <S-\> <S-Tab>
" noremap <Leader>r .
" noremap <Tab> >>
" vnoremap <Tab> >>
" xnoremap <Tab> >>
" inoremap <S-Tab> <C-D>
" noremap <S-Tab> <<
" vnoremap <S-Tab> <<
" xnoremap <S-Tab> <<

" Quicker window movement
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>h <C-w>h
noremap <Leader>l <C-w>l

" resize buffers
noremap - <C-w>-
noremap + <C-w>+

" splits lines in normal mode using ctrl+j
noremap <NL> i<CR><ESC>

" tabbar plugin
nmap <Leader><Tab> :TagbarToggle<CR>

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

filetype plugin on " needed for installed plugins to work
execute pathogen#infect()
"filetype plugin indent on

set statusline+=%{SyntasticStatuslineFlag()} " recommended options for syntastic
"set statusline+=%*
" set statusline+=%#warningmsg#
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ['trimming empty <style>']
let g:syntastic_html_tidy_ignore_errors = ['trimming empty <i>']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_php_checkers = ['php'] " also phpcs, phpmd

set fdc=0
set foldcolumn=0 " 0 removes fold column on left side of screen
