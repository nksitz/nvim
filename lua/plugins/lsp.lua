return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			-- Lua
			require("lspconfig").lua_ls.setup({})

			-- Python
			require("lspconfig").pyright.setup({})
			require("lspconfig").ruff.setup({})

			-- Javascript / Typescript
			require("lspconfig").ts_ls.setup({})
		end,
	},
}
