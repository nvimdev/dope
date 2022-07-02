-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local config ={}

-- config server in this function
function config.nvim_lsp()
end

function config.nvim_cmp()
	local cmp = require("cmp")

	cmp.setup({
		preselect = cmp.PreselectMode.Item,
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		}
  })
end

function config.lua_snip()
	local ls = require('luasnip')
	ls.config.set_config({
		history = true,
		updateevents = "TextChanged,TextChangedI",
	})
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_vscode").lazy_load({
		paths = {'./snippets/' }
	})
end

return config
