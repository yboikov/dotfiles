return {
	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				sh = { "shellcheck" },
				python = { "pylint" },
			}
			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
			-- #############################################
			lint.linters.jsonnetlint = {
				cmd = "jsonnet-lint",
				stdin = false, -- jsonnet-lint expects a file path
				args = { "$FILENAME" },
				stream = "both",
				ignore_exitcode = true,
				parser = require("lint.parser").from_pattern(
					"^(.*):(%d+):(%d+):%s(.+)$",
					{ "file", "lnum", "col", "message" },
					{ severity = vim.diagnostic.severity.WARN, source = "jsonnet-lint" }
				),
			}

			lint.linters_by_ft = lint.linters_by_ft or {}
			lint.linters_by_ft.jsonnet = { "jsonnetlint" }
			lint.linters_by_ft.libsonnet = { "jsonnetlint" }

			-- Lint on save
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
