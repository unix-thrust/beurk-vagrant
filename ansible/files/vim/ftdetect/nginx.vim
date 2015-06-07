au BufNewFile,BufRead nginx.conf set filetype=nginx
au BufNewFile,BufRead nginx.conf.* set filetype=nginx
au BufRead,BufNewFile *.nginx set filetype=nginx
au BufRead,BufNewFile */etc/nginx/* set filetype=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set filetype=nginx
