require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Move line down
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move visual block down", noremap = true, silent = true })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })

-- Move line up
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move visual block up", noremap = true, silent = true })

-- Duplicate line down
map("n", "<S-A-j>", "yyp", { desc = "Duplicate line down", noremap = true, silent = true })

-- Duplicate line up
map("n", "<S-A-k>", "yyP", { desc = "Duplicate line up", noremap = true, silent = true })

-- Redo
map("n", "<C-y>", "<C-r>", { desc = "Redo", noremap = true, silent = true })
