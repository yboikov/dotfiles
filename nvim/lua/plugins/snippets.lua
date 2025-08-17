-- lua/plugins/snippets.lua
return {
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			local ls = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- Inherit YAML snippets inside Helm templates (and gotmpl, if present)
			ls.filetype_extend("helm", { "yaml" })
			ls.filetype_extend("gotmpl", { "yaml" }) -- harmless if you don't use it

			-- Optional: enable autosnippets
			ls.config.set_config({ enable_autosnippets = true })
		end,
	},
}
