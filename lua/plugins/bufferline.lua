return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					numbers = "none",
					close_command = "bdelete! %d",
					right_mouse_command = "bdelete! %d",
					left_mouse_command = "buffer %d",
					middle_mouse_command = nil,
					indicator = {
						icon = "▎", -- this is the default
						style = "icon",
					},
					buffer_close_icon = "",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 18,
					max_prefix_length = 15,
					tab_size = 18,
					diagnostics = false,
					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = true,
					show_tab_indicators = true,
					persist_buffer_sort = true,
					separator_style = "thin",
					enforce_regular_tabs = false,
					always_show_bufferline = true,
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},
				},
				highlights = {
					fill = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					background = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					buffer_visible = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					buffer_selected = {
						fg = { attribute = "fg", highlight = "Normal" },
						bg = { attribute = "bg", highlight = "Normal" },
					},
					separator = {
						fg = { attribute = "bg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					separator_selected = {
						fg = { attribute = "bg", highlight = "Normal" },
						bg = { attribute = "bg", highlight = "Normal" },
					},
					separator_visible = {
						fg = { attribute = "bg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					close_button = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					close_button_visible = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					close_button_selected = {
						fg = { attribute = "fg", highlight = "Normal" },
						bg = { attribute = "bg", highlight = "Normal" },
					},
					modified = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					modified_visible = {
						fg = { attribute = "fg", highlight = "TabLine" },
						bg = { attribute = "bg", highlight = "TabLine" },
					},
					modified_selected = {
						fg = { attribute = "fg", highlight = "Normal" },
						bg = { attribute = "bg", highlight = "Normal" },
					},
				},
			})
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

			vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle buffer pin" })
			vim.keymap.set("n", "<leader>bc", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Close unpinned buffers" })
		end,
	},
}
