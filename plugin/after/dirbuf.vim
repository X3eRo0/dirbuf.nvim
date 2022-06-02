" We put this in plugin/after/ to guarantee that Netrw has loaded by the time
" we try to hijack it's autocmds
augroup dirbuf_hijack
  autocmd!
  " Required for vim-plug and &rtp friends
  autocmd VimEnter * if exists('#FileExplorer') | execute 'autocmd! FileExplorer *' | endif
augroup END
" Required for packer and packages friends
if exists('#FileExplorer') | execute 'autocmd! FileExplorer *' | endif
