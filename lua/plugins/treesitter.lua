return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				modules = {},
				sync_install = false,
				ensure_installed = {
					"c",
					"cpp",
					"cmake",
					"c_sharp",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"markdown",
					"markdown_inline",
					"rust",
					"python",
					"javascript",
					"typescript",
					"tsx",
					"json",
					"xml",
				},
				auto_install = false,
				ignore_install = {},
				highlight = {
					enable = true,

					-- disable = { "c", "rust" },
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
					additional_vim_regex_highlighting = false,
				},
			})
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
			vim.opt.foldenable = true
			vim.opt.foldlevel = 10
		end,
	},
}
