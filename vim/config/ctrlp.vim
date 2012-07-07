let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|tmp$|\.sass-cache$'

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = '<Leader>t'

" Map MRU to uppercase T
nmap <Leader>T :CtrlPMRU<CR>

" Don't manage the working path
let g:ctrlp_working_path_mode = 0
