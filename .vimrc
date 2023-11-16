let mapleader = "-"
call plug#begin()
Plug 'google/vim-colorscheme-primary'
Plug 'junegunn/vim-easy-align'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'hashivim/vim-terraform', {'for': ['terraform']}
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'dyng/ctrlsf.vim', {'on': ['CtrlSF']}
call plug#end()

colorscheme primary

" Return to normal mode mapping
inoremap jk <esc>

" Wrap word with either " or '
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Toggle relative numbering
nnoremap <leader>r :set relativenumber!<CR>

" Tab mappings
nnoremap <leader>c :close<CR>
nnoremap <leader>w :tabnew<CR>
nnoremap <leader>n :tabnext<CR>
nnoremap <leader>p :tabprev<CR>

" vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Split movement
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l


" Spell Check
nnoremap <silent><leader>s :setlocal spell! spelllang=en_us<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

"CtrlSF
nnoremap <C-S>f <Plug>CtrlSFPrompt
"vnoremap <C-F>f <Plug>CtrlSFVwordPath
"vnoremap <C-F>F <Plug>CtrlSFVwordExec
"nnoremap <C-F>n <Plug>CtrlSFCwordPath
"nnoremap <C-F>p <Plug>CtrlSFPwordPath
"nnoremap <C-F>o :CtrlSFOpen<CR>
"nnoremap <C-F>t :CtrlSFToggle<CR>
"inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
"let g:ctrlsf_default_view_mode = 'compact'
