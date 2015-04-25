call pathogen#infect()
set autoindent
set smartindent
set number
set background=dark
"set modeline
set hidden
set wildmenu
set mouse=a
set colorcolumn=80
set hlsearch
set ts=4 sw=4
set t_Co=256
syntax enable
filetype plugin indent on
colorscheme darkspectrum
set autoread

"let g:CSApprox_hook_post = ['hi Normal  ctermbg=NONE ctermfg=NONE',
"							\ 'hi NonText ctermbg=NONE ctermfg=NONE' ]

let mapleader = "\<Space>"
nnoremap <Leader>l :buffers<CR>:buffer<Space>
nnoremap <Leader>g :b#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" mozilla-specific options
if expand("%:p") =~ '\v(^/moz/|^/home/aguthrie/mozilla/).*\.(cpp|h|idl|js|xml|css|xul|xhtml|html)'
  set ts=2 sw=2 et
endif

au BufEnter *.hs compiler ghc
au FileType python set ts=4 sw=4 et nosmartindent
au FileType javascript,coffee set ts=4 sw=4 et
au FileType c,cpp set ts=2 sw=2 et
au FileType html,htmldjango set ts=2 sw=2 et
au FileType java set ts=4 sw=4 et
au BufEnter,BufNewFile *.ejs set filetype=html

nmap <silent> <c-n> :NERDTreeToggle<CR>

" minibufexpl
let g:miniBufExplMapWindowNavVim = 1 

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=44 columns=105
  set guifont=DejaVu\ Sans\ Mono:h12
  colorscheme solarized
  set bg=light
  set nonumber
endif

"autocmd VimLeave * !osascript -e 'tell app \"iTerm\" to set transparency of (current session of current terminal) to \"0.0\"' 
