return {
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local conform = require("conform")
            conform.setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    go = { "goimports", "gofumpt" },
                    sh = { "shfmt" },
                },
                format_on_save = {
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 500,
                },
            })
        end,
        keys = {
            {
                "<leader>mp",
                function()
                    require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 500 })
                end,
                mode = "",
                desc = "Format buffer",
            },
        },
    },
}
