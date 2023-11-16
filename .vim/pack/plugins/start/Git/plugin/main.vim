autocmd BufWritePost * :execute "Git add %"

function! GitCommitPush(comment)
    let l:branch = FugitiveHead()
    execute "Git commit -m \"".a:comment."\""
    execute "Git push origin ".l:branch
endfunction

nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gd :Git diff<CR>:only<CR>
