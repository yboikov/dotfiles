return {
	"kelly-lin/ranger.nvim",
	config = function()
		require("ranger-nvim").setup({
			replace_netrw = true,
			ui = {
				border = "single",
				height = 0.95,
				width = 1,
				x = 0.5,
				y = 0.5,
			},
		})
		vim.api.nvim_set_keymap("n", "<leader>o", "", {
			noremap = true,
			callback = function()
				require("ranger-nvim").open(true)
			end,
		})
	end,
}
