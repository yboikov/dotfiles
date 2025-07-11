return {

    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            sections = {
                lualine_x = { { 'filename', path = 1, } },
            }
        })
    end,
}
