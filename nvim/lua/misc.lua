vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local exclude = {
	mason = true,
	oil = true,
	help = true,
	lazygit = true,
}

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
	pattern = "*",
	callback = function()
		if exclude[vim.api.nvim_buf_get_option(0, "filetype")] then
			vim.opt.relativenumber = false
			return
		end
		vim.opt.relativenumber = true
	end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
	pattern = "*",
	callback = function()
		if exclude[vim.api.nvim_buf_get_option(0, "filetype")] then
			return
		end
		vim.opt.relativenumber = false
	end,
})
