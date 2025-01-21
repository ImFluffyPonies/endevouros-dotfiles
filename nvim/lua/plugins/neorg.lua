return {
	"nvim-neorg/neorg",
	dependencies = {
		"vhyrro/luarocks.nvim",
		"nvim-neorg/lua-utils.nvim",
		"pysan3/pathlib.nvim",
	},
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {},
				["core.export"] = {},
				["core.export.markdown"] = {},
				["core.integrations.treesitter"] = {},
			},
		})
	end,
}
