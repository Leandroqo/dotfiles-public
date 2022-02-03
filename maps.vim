let mapleader=" "


"------------------------------
" Like Text Editor

" Save Ctrl-S
nnoremap <silent><C-s> :<c-u>update<cr>
vnoremap <silent><C-s> :<c-u>update<cr>gv
inoremap <silent><C-s> :<c-u>update<cr>

"------------------------------
" Extra
nnoremap <silent> <leader>n :noh<cr>

"------------------------------
" LSP 
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k>     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>f    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>aw    <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <silent> <leader>rw    <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>

nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
xmap <silent> <leader>a <cmd>lua vim.lsp.buf.range_code_action()<CR>


"------------------------------
" Telescope
nnoremap <silent> ;f <cmd>Telescope find_files<CR>
nnoremap <silent> ;g <cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <cmd>Telescope help_tags<CR>


"------------------------------
" NerdTree
"let NERDTreeShowHidden=1
"nnoremap <C-n> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

"------------------------------
" Harpoon
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent>;h :lua require("harpoon.ui").toggle_quick_menu()<CR>

nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>

"------------------------------
" Fast Reuse
nnoremap <leader>q @q<CR>


"------------------------------
" Windows

" Split window
nmap <leader>ss :split<Return><C-w>w
nmap <leader>v :vsplit<Return><C-w>w
" Resize window
nmap <leader>- :vertical resize -80<CR>
nmap <leader>+ :vertical resize +80<CR>
nmap <C-w><up> 80<C-w>_
nmap <C-w><down> -80<C-w>_
" Move window
" nmap <Space> <C-w>w
" map <leader>s<left> <C-w>h
" map <leader>s<up> <C-w>k
" map <leader>s<down> <C-w>j
" map <leader>s<right> <C-w>l
" map <leader>sh <C-w>h
" map <leader>sk <C-w>k
" map <leader>sj <C-w>j
" map <leader>sl <C-w>l
" " Resize window
" nmap <C-w><left> <C-w><
" nmap <C-w><right> <C-w>>
" nmap <C-w><up> <C-w>+
" nmap <C-w><down> <C-w>-
