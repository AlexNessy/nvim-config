return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function()
			local wk = require("which-key")
			wk.register({
				["<C-p>"] = { "Find File" },
				["<C-n>"] = { ":Oil --float <CR>", "Oil" },
				["<C-l>"] = { "<C-w>w", "Switch Windows" },
				["<C-e>"] = { "Show Harpoon List" },
				K = { "Define Function" },
				["<leader>"] = {
					z = { ":wqa <CR>", "Quit All" },
					q = { ":q! <CR>", "Quit buffer" },
					w = { ":w <CR>", "Save buffer" },
					a = { "Add to Harpoon List" },
					r = { "Remove from Harpoon List" },
					f = {
						name = "File",
						g = { "Live Grep" },
					},
					g = {
						name = "Formatting",
						f = { "Format" },
					},
					u = { "Incline" },
					c = {
						name = "Code",
						a = { "Action" },
					},
					e = {
						name = "NeoTree Options",
						e = {
							":Neotree toggle left<CR>",
							"Toggle Neotree",
						},
					},
				},
			})
		end,
	},
}
