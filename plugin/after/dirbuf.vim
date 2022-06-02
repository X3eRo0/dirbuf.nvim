augroup dirbuf_hijack
  autocmd!
  " Makes editing a directory open a dirbuf. We always re-init the dirbuf
  autocmd VimEnter * if exists('#FileExplorer') | execute 'autocmd! FileExplorer *' | endif
augroup END
if exists('#FileExplorer') | execute 'autocmd! FileExplorer *' | endif
