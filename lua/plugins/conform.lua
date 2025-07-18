return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			cs = { "csharpier" },
			json = { "prettierd" },
			yaml = { "prettierd" },
			lua = { "stylua" },
			python = { "ruff", "ruff_format" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			rust = { "rustfmt" },
		},
		-- Set up format-on-save
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
