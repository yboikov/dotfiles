vim.keymap.set({ "v", "n" }, "]b", "<CMD>bnext<CR>")
vim.keymap.set({ "v", "n" }, "[b", "<CMD>bprev<CR>")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', {})
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', {})

-- delete NOT cut
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d', {})
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D', {})

vim.keymap.set({ "n", "v" }, "<leader><space>", "<CMD>set hls!<CR>")
vim.keymap.set({ "n", "v" }, "<leader>x", "<CMD>bdelete<CR>")

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

