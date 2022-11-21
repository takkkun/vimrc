" Font size

nnoremap <M-S-;> :<C-u>action EditorIncreaseFontSize<CR>
nnoremap <M--> :<C-u>action EditorDecreaseFontSize<CR>
nnoremap <M-0> :<C-u>action EditorResetFontSize<CR>

" Tab

nmap <Space>t [tab]

nnoremap [tab]a :<C-u>action CloseAllEditors<CR>
nnoremap [tab]o :<C-u>action CloseAllEditorsButActive<CR>

" Navigate

nmap <Space>n [navigate]

nnoremap [navigate]t :<C-u>action GotoTest<CR>

" Rename

nmap <Space>r [rename]

nnoremap [rename]e :<C-u>action RenameElement<CR>
nnoremap [rename]f :<C-u>action RenameFile<CR>
