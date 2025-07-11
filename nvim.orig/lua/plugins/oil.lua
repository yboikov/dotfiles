return {
	"stevearc/oil.nvim",
	opts = {
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
		skip_confirm_for_simple_edits = true,
		keymaps = {
			["<C-i>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
		},
	},
}
