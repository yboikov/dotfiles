return {
	{
		"nvim-treesitter.configs",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"go",
					"python",
					"bash",
					"html",
					"templ",
					"vimdoc",
					"hcl",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
			vim.filetype.add({
				extension = {
					templ = "templ",
				},
			})
		end,
	},
}
