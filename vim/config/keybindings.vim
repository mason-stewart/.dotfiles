" Move between split windows by using leader key
nnoremap <silent> <Leader>h <C-w>h
nnoremap <silent> <Leader>l <C-w>l
nnoremap <silent> <Leader>k <C-w>k
nnoremap <silent> <Leader>j <C-w>j

" Split-resize shortcuts
map <Leader>reh :res 
map <Leader>rew :vertical res 

" Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Toggle paste
nmap <leader>sp :set paste! paste?<CR>

" Bubble lines; see http://vimcasts.org/episodes/bubbling-text/
nmap <C-k> ddkP
nmap <C-j> ddp
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]
