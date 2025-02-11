local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("v", "jk", "<ESC>")

-- lsp navigation
map("n", "gd", function()
	vim.lsp.buf.definition()
	vim.cmd("normal! zz")
end, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gR", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })

map("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic detail" })
map("n", "ga", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "gr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("v", "<Leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Move and auto-indent
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down and indent" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up and indent" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down and indent" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up and indent" })
