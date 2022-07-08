-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local vim = vim
local home = os.getenv('HOME')
-- remove check is windows because I only use mac or linux
local cache_dir = home .. '/.cache/nvim/'

-- Create cache dir and subs dir
local createdir = function()
  local data_dir = {
    cache_dir .. 'backup',
    cache_dir .. 'session',
    cache_dir .. 'swap',
    cache_dir .. 'tags',
    cache_dir .. 'undo',
  }
  -- There only check once that If cache_dir exists
  -- Then I don't want to check subs dir exists
  if vim.fn.isdirectory(cache_dir) == 0 then
    os.execute('mkdir -p ' .. cache_dir)
    for _, v in pairs(data_dir) do
      if vim.fn.isdirectory(v) == 0 then
        os.execute('mkdir -p ' .. v)
      end
    end
  end
end

createdir()

--disable_distribution_plugins
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1

local pack = require('core.pack')

pack.ensure_plugins()
require('core.options')
pack.load_compile()
require('keymap')
