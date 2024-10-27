-- leader key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- hotkeys
vim.keymap.set('n', "<leader>z", "za") -- fold
vim.keymap.set('n', "<leader>tree", ":NvimTreeToggle<enter>")
vim.keymap.set('n', "<leader>grep", ":FzfLua lgrep_curbuf<enter>") -- live grep in current buffer
vim.keymap.set('n', "<leader>fzf", ":FzfLua<enter>") -- find/replace plugin
vim.keymap.set('n', "<leader>w", "<C-w>") -- window navigation
vim.keymap.set('n', "<leader>git", ":Neogit<enter>") -- git plugin

-- html live-server commands
vim.keymap.set('n', "<leader>serve", ":te live-server . --browser=firefox<enter>")

-- cmake commands
vim.keymap.set('n', "<leader>build", ":!cmake --build build<enter>")
vim.keymap.set('n', "<leader>rebuild", ":!cmake -B build<enter>")

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- make colors nicer
vim.opt.termguicolors = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.ignorecase = true

-- searching
-- case-insensitive searching unless \C or one or more capital letters in the search term
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- set whitespace characters
-- see ":help list"
-- and ":help listchars"
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- clear highlights on search when pressing <Esc> in normal mode
-- see ":help hlsearch"
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- folding
vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

-- g.markdown_folding = 1 -- enable markdown folding

-- plugin manager
require("config.lazy")
