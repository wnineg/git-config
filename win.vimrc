" [Set the textwidth of git commit message edit to 100 except the first line]
" Under Windows when using vim provided by msysgit to edit the git commit
" message, the textwidth set by '~/.vimrc' will be override by
" '<git>/usr/share/vim/vim81/ftplugin/gitcommit.vim' (as of git version
" 2.24.0.windows.2). Therefore, put the following command into the later if 
" putting into the former takes no effect.
"
" Credit:
" https://vi.stackexchange.com/questions/9174/line-number-specific-text-width-setting
au CursorMovedI * call ModifyTextWidth() 

function! ModifyTextWidth()
    if line('.') == 1            " if first line
        setlocal textwidth=0     " no width limit
    else
        setlocal textwidth=100   " otherwise use normal textwidth
    endif
endfunction

