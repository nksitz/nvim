return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"Issafalcon/neotest-dotnet",
			"nvim-neotest/neotest-python",
			"mrcjkb/rustaceanvim",
		},

		config = function()
			local neotest = require("neotest")

			neotest.setup({
				adapters = {
					require("neotest-dotnet")({
						dap = { justMyCode = false },
					}),
					require("neotest-python")({
						dap = { justMyCode = false },
					}),
					require("rustaceanvim.neotest"),
				},
				-- output = {
				-- 	open_on_run = true, -- Opens the output window automatically when running tests
				-- },
			})

			vim.keymap.set("n", "<leader>tt", function()
				neotest.run.run()
			end, { desc = "Run nearest test" })
			vim.keymap.set("n", "<leader>tT", function()
				neotest.run.run(vim.fn.expand("%"))
			end, { desc = "Run all tests in file" })
			vim.keymap.set("n", "<leader>td", function()
				neotest.run.run({ strategy = "dap" })
			end, { desc = "Debug nearest test" })
			vim.keymap.set("n", "<leader>ts", function()
				neotest.summary.toggle()
			end, { desc = "Toggle test summary" })
			vim.keymap.set("n", "<leader>to", function()
				neotest.output.open()
			end, { desc = "Show test output" })
			vim.keymap.set("n", "<leader>tO", function()
				neotest.output.open({ enter = true })
			end, { desc = "Show output and enter window" })
			vim.keymap.set("n", "<leader>tp", function()
				neotest.output_panel.toggle()
			end, { desc = "Toggle test output panel" })
			vim.keymap.set("n", "<leader>tw", function()
				neotest.watch.toggle()
			end, { desc = "Toggle watch mode" })
			vim.keymap.set("n", "<leader>tq", function()
				neotest.run.stop()
			end, { desc = "Stop running test" })
		end,
	},
}
