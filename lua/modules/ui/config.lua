local config = {}

function config.zephyr()
  vim.cmd('colorscheme zephyr')
end

function config.dashboard()
  local db = require('dashboard')
  db.custom_center = {
    {
      icon = '  ',
      desc = 'Update Plugins                          ',
      shortcut = 'SPC p u',
      action = 'Lazy update',
    },
    {
      icon = '  ',
      desc = 'Find File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f',
    },
  }
end

function config.nvim_bufferline()
  require('bufferline').setup({
    options = {
      modified_icon = '✥',
      buffer_close_icon = '',
      always_show_bufferline = false,
    },
  })
end

function config.nvim_tree()
  require('nvim-tree').setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
  })
end

return config
