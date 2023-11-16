" Use Terraform fmt before writing back to disk. The
"   Terraform version of this resets the current working
"   line to the beginning of the file. This fixes that.
autocmd BufWritePre *.tf :call TerraformFormat()
function! TerraformFormat()
    let l:lineNumber = line('.')
    echom "Applying Format".strftime("%T")
    execute terraform#fmt()
    execute "normal! ".l:lineNumber."gg"
endfunction

" After Terraform merge to main in gitlab, if something goes wrong,
"   we need to update the working branch with gitlab main in order
"   to be able to continue working on the branch unimpeded.
nnoremap <leader>gs :call TerraformGitUpdateWorking()<CR>
function! TerraformGitUpdateWorking()
    " Current working branch
    let l:branch = FugitiveHead()
    echom "Terraform rebase branch ".l:branch." at time: ".strftime("%T")
    " autoread changes to files on disk for vim
    set autoread
    Git checkout main
    Git pull -q
    execute "Git checkout ".l:branch
    Git merge -m "merge from main" main
    " Turn off autoread
    set noautoread
endfunction
