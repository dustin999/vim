let mapleader=","
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
if has("gui_running")
  "set guifont=Menlo\ Regular:h14
  set guioptions+=TlLb
  set guioptions-=TlLb
  set lines=60
  set columns=120
  colorscheme ir_black
  set guifont=Monospace\ 9
elseif &term =~ "-256color"
	colorscheme ir_black
  set guifont=Monospace\ 9
else
  colorscheme default
  set guifont=Monospace\ 9
endif
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
set hidden
set ignorecase
set smartindent
autocmd FileType python   set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent
set number
map <silent> <unique> <Leader>be <Plug>StartBufExplorer
map <c-o> <leader>be
map <c-[> :bp<CR>
map <c-]> :bn<CR>
map <leader>d :bd<CR>

