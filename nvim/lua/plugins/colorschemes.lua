return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("kanagawa-dragon")
		end,
	},

	{
		"folke/tokyonight.nvim",
	},
}
