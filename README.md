# neovim-setup

![image](https://user-images.githubusercontent.com/12025741/132083650-4d35d120-493d-4cc0-9962-ce3d805ef040.png)

## Installation

Run file `install.sh`

```
bash install.sh
```

### Standard

```
" Leader key
let mapleader = ","

" Save buffers
nnoremap <leader>w :w<cr>

" Tabs move
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" turn off highlight 
nnoremap <leader>l :noh<CR>
```

### Autocompletion

```
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
```

### Emmet

```
" <C-e>, -> execute emmet commands
let g:user_emmet_leader_key='<C-e>'
```

### NvimTree

```
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

- `<CR>` or `o` on `..` will cd in the above directory
- `<C-]>` will cd in the directory under the cursor
- `<BS>` will close current opened directory or parent
- type `a` to add a file. Adding a directory requires leaving a leading `/` at the end of the path.
  > you can add multiple directories by doing foo/bar/baz/f and it will add foo bar and baz directories and f as a file
- type `r` to rename a file
- type `<C-r>` to rename a file and omit the filename on input
- type `x` to add/remove file/directory to cut clipboard
- type `c` to add/remove file/directory to copy clipboard
- type `y` will copy name to system clipboard
- type `Y` will copy relative path to system clipboard
- type `gy` will copy absolute path to system clipboard
- type `p` to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
- type `d` to delete a file (will prompt for confirmation)
- type `]c` to go to next git item
- type `[c` to go to prev git item
- type `-` to navigate up to the parent directory of the current file/directory
- type `s` to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see `:h nvim-tree.setup` under `system_open`)
- if the file is a directory, `<CR>` will open the directory otherwise it will open the file in the buffer near the tree
- if the file is a symlink, `<CR>` will follow the symlink (if the target is a file)
- `<C-v>` will open the file in a vertical split
- `<C-x>` will open the file in a horizontal split
- `<C-t>` will open the file in a new tab
- `<Tab>` will open the file as a preview (keeps the cursor in the tree)
- `I` will toggle visibility of folders hidden via |g:nvim_tree_ignore|
- `H` will toggle visibility of dotfiles (files/folders starting with a `.`)
- `R` will refresh the tree
- Double left click acts like `<CR>`
- Double right click acts like `<C-]>`
```



### Telescope

```
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
```

### Vimspector

```
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>dtl :VimspectorToggleLog<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
```

### Language Server Protocol

```
" Built-in Lsp
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>'
nnoremap <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>'
nnoremap <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <space>f <cmd>lua vim.lsp.buf.formatting()<CR>

" Lsp saga
" finder
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" code action
nnoremap <silent> <leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent> <leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

" scroll down hover doc or scroll in definition preview
nnoremap <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" signature Help
nnoremap <silent> gs :Lspsaga signature_help<CR>

" rename
nnoremap <silent> gr :Lspsaga rename<CR>

" preview Defination
nnoremap <silent> pd :Lspsaga preview_definition<CR>

" show diagnostic
nnoremap <silent> <leader>cd <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

" only show diagnostic if cursor is over the area
nnoremap <silent> <leader>cc <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>

" jump diagnostic
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
```

### Terminal

```
" float terminal also you can pass the cli command in open_float_terminal function
nnoremap <leader>ft :Lspsaga open_floaterm<CR>
tnoremap <leader>ft <C-\><C-n>:Lspsaga close_floaterm<CR>
```

### Comment (Kommentary)

```
nnoremap <leader>cc <Plug>kommentary_line_default
nnoremap <leader>c <Plug>kommentary_motion_default
xnoremap <leader>c <Plug>kommentary_visual_default
```

## Supported Only

MacOs and Ubuntu 20.x
