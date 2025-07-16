return {
	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "anthropic",
					},
					-- inline = {
					-- 	adapter = "anthropic",
					-- },
				},
				display = {
					chat = {
						window = {
							layout = "vertical", -- float|vertical|horizontal|buffer
							position = "right",
						},
					},
				},
			})
			vim.keymap.set({ "n", "v" }, "<Leader>cc", "<cmd>CodeCompanionChat<cr>", { desc = "Toggle Code Companion" })
		end,
	},
}
