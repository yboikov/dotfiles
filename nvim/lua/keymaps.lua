vim.keymap.set({ "v", "n" }, "]b", "<CMD>bnext<CR>")
vim.keymap.set({ "v", "n" }, "[b", "<CMD>bprev<CR>")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', {})
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', {})

-- delete NOT cut
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', {})
vim.keymap.set({ "n", "v" }, "<leader>D", '"_D', {})

vim.keymap.set({ "n", "v" }, "<leader><space>", "<CMD>set hls!<CR>")

vim.keymap.set({ "n", "v" }, "<leader>x", "<CMD>bdelete<CR>")
