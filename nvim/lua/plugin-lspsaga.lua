local saga = require('lspsaga')

-- add your config value here
-- default value
-- use_saga_diagnostic_sign = true
-- error_sign = '',
-- warn_sign = '',
-- hint_sign = '',
-- infor_sign = '',
-- dianostic_header_icon = '   ',
-- code_action_icon = ' ',
-- code_action_prompt = {
--   enable = true,
--   sign = true,
--   sign_priority = 20,
--   virtual_text = true,
-- },
-- finder_definition_icon = '  ',
-- finder_reference_icon = '  ',
-- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
-- finder_action_keys = {
--   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
-- },
-- code_action_keys = {
--   quit = 'q',exec = '<CR>'
-- },
-- rename_action_keys = {
--   quit = '<C-c>',exec = '<CR>'  -- quit can be a table
-- },
-- definition_preview_icon = '  '
-- "single" "double" "round" "plus"
-- border_style = "single"
-- rename_prompt_prefix = '➤',
-- if you don't use nvim-lspconfig you must pass your server name and
-- the related filetypes into this table
-- like server_filetype_map = {metals = {'sbt', 'scala'}}
-- server_filetype_map = {}

saga.init_lsp_saga {
	error_sign = '',
	warn_sign = '',
	hint_sign = '',
	infor_sign = '',
	dianostic_header_icon = '   ',
	code_action_icon = ' ',
	code_action_prompt = {
	  enable = true,
	  sign = true,
	  sign_priority = 20,
	  virtual_text = true,
	},
	finder_definition_icon = '  ',
	finder_reference_icon = '  ',
	max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
	finder_action_keys = {
	  open = 'o',
	  vsplit = 's',
	  split = 'i',
	  quit = 'q',
	  scroll_down = '<C-f>',
	  scroll_up = '<C-b>'
	},
	code_action_keys = {
	  quit = 'q',
	  exec = '<CR>'
	},
	rename_action_keys = {
	  quit = '<C-c>',
	  exec = '<CR>'  -- quit can be a table
	},
	definition_preview_icon = '  ',
	-- "single" "double" "round" "plus"
	border_style = "single",
	rename_prompt_prefix = '➤',
	-- if you don't use nvim-lspconfig you must pass your server name and
	-- the related filetypes into this table
	-- like server_filetype_map = {metals = {'sbt', 'scala'}}
	server_filetype_map = {}
}

vim.cmd([[

" Finder
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

" Signature Help
nnoremap <silent> gs :Lspsaga signature_help<CR>

" Rename
nnoremap <silent> gr :Lspsaga rename<CR>

" Preview Defination
nnoremap <silent> gd :Lspsaga preview_definition<CR>

" Show diagnostic
nnoremap <silent> <leader>cd <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

" only show diagnostic if cursor is over the area
nnoremap <silent> <leader>cc <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>

" jump diagnostic
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

" float terminal also you can pass the cli command in open_float_terminal function
nnoremap <leader>ft :Lspsaga open_floaterm<CR>
tnoremap <leader>ft <C-\><C-n>:Lspsaga close_floaterm<CR>

]])

