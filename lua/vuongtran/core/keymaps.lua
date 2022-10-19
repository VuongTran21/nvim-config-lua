local Remap = require("vuongtran.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- set leader key to space
vim.g.mapleader = " "

---------------------
-- General Keymaps
---------------------

-- clear search highlights
nnoremap("<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
nnoremap("x", '"_x')

-- window management
nnoremap("<leader>sv", "<C-w>v") -- split window vertically
nnoremap("<leader>sh", "<C-w>s") -- split window horizontally
nnoremap("<leader>se", "<C-w>=") -- make split windows equal width & height
nnoremap("<leader>sx", ":close<CR>") -- close current split window

nnoremap("<leader>to", ":tabnew<CR>") -- open new tab
nnoremap("<leader>tx", ":tabclose<CR>") -- close current tab
nnoremap("<leader>tn", ":tabn<CR>") --  go to next tab
nnoremap("<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
nnoremap("<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
nnoremap("<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
nnoremap("<leader>b", ":NvimTreeFindFile<CR>") -- find file explorer

-- telescope
nnoremap("<leader>ps", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")
nnoremap("<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>ph", "<cmd>lua require('telescope.builtin').find_files({ hidden=true })<CR>")
nnoremap("<leader>pw", "<cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand('<cword>') }<CR>")
nnoremap("<leader>pb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>vh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').git_files()<CR>")

-- telescope git commands (not on youtube nvim video)
nnoremap("<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
nnoremap("<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
nnoremap("<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
nnoremap("<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
nnoremap("<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- formatting
nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<CR>")

-- moving, indent text around
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
vnoremap("<", "<gv", { noremap = true, silent = false })
vnoremap(">", ">gv", { noremap = true, silent = false })

-- greatest remap ever
xnoremap("<leader>p", '"_dP')

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')
nmap("<leader>Y", '"+Y')

nnoremap("<leader>d", '"_d')
vnoremap("<leader>d", '"_d')

vnoremap("<leader>d", '"_d')
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- search and ready to replace all the matching words in current buffer

nnoremap("<C-h>", "<C-w>h", { noremap = true, silent = false })
nnoremap("<C-l>", "<C-w>l", { noremap = true, silent = false })
nnoremap("<C-j>", "<C-w>j", { noremap = true, silent = false })
nnoremap("<C-k>", "<C-w>k", { noremap = true, silent = false })

nnoremap("<leader>q", ":q!<CR>") -- quit without save
nnoremap("<leader>Q", ":wq<CR>") -- save and quit
nnoremap("<leader>w", ":w<CR>") -- save single file
nnoremap("<leader>x", ":bdelete<CR>") -- delete buffer
