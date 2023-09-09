local telescope = require('telescope')
local finders = require('telescope.finders')
local pickers = require('telescope.pickers')
local make_entry = require('telescope.make_entry')
local conf = require('telescope.config').values

local config_path = vim.fn.stdpath('config')

local config_file_list = function()
  local list = {}
  local p = io.popen('rg --files --ignore .git ' .. config_path)
  for file in p:lines() do
    table.insert(list, file)
  end
  return list
end

local nvim_user_config = function(opts)
  opts = opts or {}
  local results = config_file_list()

  pickers
    .new(opts, {
      prompt_title = 'find in nvim user config files',
      results_title = 'Nvim User Configs',
      finder = finders.new_table({
        results = results,
        entry_maker = make_entry.gen_from_file(opts),
      }),
      previewer = conf.file_previewer(opts),
      sorter = conf.file_sorter(opts),
    })
    :find()
end

return telescope.register_extension({ exports = { nvim_user_config = nvim_user_config } })
