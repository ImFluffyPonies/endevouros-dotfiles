return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
		config = function()
			require("catppuccin").setup({
				flavour = "frappe",
				integrations = {
					cmp = true,
					gitsigns = true,
					neotree = true,
					treesitter = true,
					notify = true,
				},
				no_italic = true,
				color_overrides = {
					all = {
						base = "#28282B",
						mantle = "#28282B",
						-- crust = "#1e1e1e",
					},
				},
			})
		end,
	},
}
