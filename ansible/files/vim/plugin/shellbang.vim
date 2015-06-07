function ShellBangLine()
    0put = '#!/usr/bin/env ' . &filetype
    normal G
endfunction
command Sb call ShellBangLine()
