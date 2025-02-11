vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.mappings")

vim.opt.termguicolors = true

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.wo.relativenumber = true
vim.wo.number = true

vim.lsp.inlay_hint.enable(true)

vim.diagnostic.config({
	virtual_text = {
		source = true,
		virt_text_pos = "eol",
	},
	severity_sort = true,
})

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Defaults from nvim nightly
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "gra", vim.lsp.buf.code_action)
vim.keymap.set("n", "grr", vim.lsp.buf.references)
vim.keymap.set("n", "gri", vim.lsp.buf.implementation)
vim.keymap.set("n", "gO", vim.lsp.buf.document_symbol)
vim.keymap.set("i", "<C-S>", vim.lsp.buf.signature_help)
