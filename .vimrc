set number
set ruler
set expandtab
set shiftwidth=4
filetype plugin indent on
syntax on

let mapleader = "-"

" Common mistakes
iabbrev ture true
iabbrev verison version

" Terraform
autocmd BufWritePre *.tf :execute terraform#fmt()

" Return to normal mode mapping
inoremap jk <esc>

"inoremap <c-c> <esc>:w<CR>:close<CR>
nnoremap <leader>O :only<CR>
nnoremap <leader>r :set relativenumber!<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

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

" Git commands
nnoremap <leader>gm :Git checkout main<CR>
nnoremap <leader>gu :Git pull<CR>
nnoremap <leader>gp :Git push origin<CR>

" Spell Check
nnoremap <silent><leader>s :setlocal spell! spelllang=en_us<CR>

"colorscheme primary
let g:colors = getcompletion('', 'color')
nnoremap <C-t> :NERDTreeToggle<CR>

"CtrlSF
nnoremap <C-F>f <Plug>CtrlSFPrompt
vnoremap <C-F>f <Plug>CtrlSFVwordPath
vnoremap <C-F>F <Plug>CtrlSFVwordExec
nnoremap <C-F>n <Plug>CtrlSFCwordPath
nnoremap <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
let g:ctrlsf_default_view_mode = 'compact'

