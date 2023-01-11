local package = require('core.pack').package
local conf = require('modules.ui.config')

package({ 'glepnir/zephyr-nvim', config = conf.zephyr })

package({ 'glepnir/dashboard-nvim', config = conf.dashboard })

package({
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({ 'akinsho/nvim-bufferline.lua', config = conf.nvim_bufferline, dependencies = { 'nvim-tree/nvim-web-devicons'} })
