" Load indent and filetype plugins if available
filetype plugin indent on

" Visuals
set relativenumber
set number
set colorcolumn=80
set showmatch

" Whitespace formatting, defaults are 2 spaces but python has 4 for pep8
" compliance
set autoindent
set shiftround
set expandtab
set nowrap
set textwidth=79
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" File and word completion
set path+=**
set wildmenu
set complete=.,w,b,u

" folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable

" set sensible split positions
set splitbelow
set splitright

" Statusbar
set laststatus=2
set statusline=%3c
set statusline+=\ >\ %f\ 

" Colors
set t_Co=16   			
set background=dark
syntax on

highlight clear

if exists("syntax_on")
  syntax reset
endif

highlight Title        cterm=NONE      ctermfg=Cyan       ctermbg=Black
highlight Normal       cterm=NONE      ctermfg=White      ctermbg=Black

highlight Comment      cterm=NONE      ctermfg=Gray
highlight Constant     cterm=NONE      ctermfg=White
highlight Identifier   cterm=NONE      ctermfg=White
highlight Function     cterm=NONE      ctermfg=White
highlight Statement    cterm=NONE      ctermfg=Cyan
highlight PreProc      cterm=NONE      ctermfg=White
highlight Type	       cterm=NONE      ctermfg=White
highlight Special      cterm=NONE      ctermfg=White
highlight Delimiter    cterm=NONE      ctermfg=White

highlight DiffAdd      cterm=NONE      ctermfg=Black      ctermbg=Green
highlight DiffChange   cterm=NONE      ctermfg=Black      ctermbg=Yellow
highlight DiffDelete   cterm=NONE      ctermfg=Black      ctermbg=Red
highlight DiffText     cterm=underline ctermfg=Black      ctermbg=Yellow

highlight Visual       cterm=inverse   ctermfg=NONE       ctermbg=NONE

highlight Search                       ctermfg=Black      ctermbg=Yellow

highlight LineNr                       ctermfg=DarkGray
highlight CursorLineNr                 ctermfg=DarkGray
highlight ColorColumn                  ctermfg=Black      ctermbg=DarkRed
highlight Folded                       ctermfg=Gray       ctermbg=DarkGray
highlight FoldColumn                   ctermfg=Gray       ctermbg=DarkGray
highlight Pmenu                        ctermfg=White      ctermbg=DarkGray
highlight PmenuSel                     ctermfg=DarkGray   ctermbg=White
highlight SpellCap                     ctermfg=Gray       ctermbg=DarkGray
highlight StatusLine   cterm=NONE      ctermfg=Black      ctermbg=White
highlight StatusLineNC cterm=NONE      ctermfg=Black      ctermbg=Gray
highlight StatusLineTerm               ctermfg=Black      ctermbg=Green
highlight StatusLineTermNC             ctermfg=Black      ctermbg=DarkGreen
highlight VertSplit    cterm=NONE      ctermfg=DarkGray   ctermbg=Black
highlight SignColumn                                      ctermbg=DarkGray

" TODO: Implement simple function for sending lines to REPL
