return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
            view = {
                adaptive_size = true,
            },
        })
        vim.keymap.set("n", "<leader>e", function()
            require("nvim-tree.api").tree.toggle({ find_file = true, focus = true })
        end, { desc = "Toggle file tree (reveal current file)" })
    end,
}
