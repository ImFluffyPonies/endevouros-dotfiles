return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	init = function()
		vim.cmd("colorscheme kanagawa-dragon")
	end,
	config = function()
		require("kanagawa").setup({
			transparent = false,
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			overrides = function(colors)
				local current_theme = colors.theme
				return {
					Pmenu = { fg = current_theme.ui.shade0, bg = current_theme.ui.bg_p1 },
					PmenuSel = { fg = "NONE", bg = current_theme.ui.bg_p2 },
					PmenuSbar = { bg = current_theme.ui.bg_m1 },
					PmenuThumb = { bg = current_theme.ui.bg_p2 },
				}
			end,
		})
	end,
}
