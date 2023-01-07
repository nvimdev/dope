local package = require('core.pack').package
local conf = require('modules.ui.config')

package({ 'glepnir/zephyr-nvim', config = conf.zephyr })

package({ 'glepnir/dashboard-nvim', config = conf.dashboard })

package({
  'kyazdani42/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  dependencies = 'kyazdani42/nvim-web-devicons',
})

package({ 'akinsho/nvim-bufferline.lua', config = conf.nvim_bufferline, dependencies = 'kyazdani42/nvim-web-devicons' })
