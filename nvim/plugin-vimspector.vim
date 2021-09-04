let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>dtl :VimspectorToggleLog<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
" for normal mode - the word under the cursor
"nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
"xmap <Leader>di <Plug>VimspectorBalloonEval"
let g:vimspector_install_gadgets = ['vscode-cpptools', 'CodeLLDB']
