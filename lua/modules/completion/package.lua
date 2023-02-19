local package = require('core.pack').package
local conf = require('modules.completion.config')

package({
  'neovim/nvim-lspconfig',
  -- used filetype to lazyload lsp
  -- config your language filetype in here
  ft = { 'lua', 'rust', 'c', 'cpp' },
  config = conf.nvim_lsp,
})

package({
  'glepnir/lspsaga.nvim',
  event = 'BufRead',
  dev = true,
  config = conf.lspsaga,
})

package({
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = conf.nvim_cmp,
  dependencies = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer' },
    { 'saadparwaiz1/cmp_luasnip' },
  },
})

package({ 'L3MON4D3/LuaSnip', event = 'InsertCharPre', config = conf.lua_snip })
