return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = {
					{
						"buffers",
						symbols = {
							modified = " ●",
						},
					},
				},
			},
		})
	end,
}
