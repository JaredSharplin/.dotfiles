vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "Open Nvim Tree"})
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "Write"})
vim.keymap.set("n", "<leader>q", ":q<CR>", {desc = "Quit"})
vim.keymap.set("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", {noremap = true, silent = true, desc = "Open LazyGit"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move Selection Down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move Selection Up"})

vim.keymap.set("n", "J", "mzJ`z", {desc = "Improved J Action"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Half Page Down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Half Page Up"})
vim.keymap.set("n", "n", "nzzzv", {desc = "Search Forward"})
vim.keymap.set("n", "n", "nzzzv", {desc = "Search Backward"})

vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste Over Selection"})
vim.keymap.set("n", "<leader>d", "\"_d", {desc = "Delete Selection"})
vim.keymap.set("v", "<leader>d", "\"_d", {desc = "Delete Selection"})

vim.keymap.set("n", "<leader>y", "\"+y", {desc = "Copy to System Clipboard"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "Copy to System Clipboard"})
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "Copy to System Clipboard"})

vim.keymap.set("n", "Q", "<Nop>", {desc = "Disable Ex Mode"})

vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = "Move Left"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = "Move Down"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = "Move Up"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = "Move Right"})

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc = "Next Error"})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc = "Previous Error"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc = "Next Error"})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc = "Previous Error"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Search and Replace"})

vim.keymap.set("n", "<leader>t", ":A<CR>", {desc = "Navigate to Test File"})

vim.keymap.set("v", "<", "<gv", {desc = "Outdent and Reselect"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent and Reselect"})
vim.keymap.set("n", "=", "v=", {desc = "Indent Current Line and Reselect"})
