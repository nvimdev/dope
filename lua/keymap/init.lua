-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
-- recommend plugins key defines in this file

require('keymap.config')
local keymap = require('core.keymap')
local map = keymap.map
local silent,noremap =keymap.silent,keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

-- usage of plugins
map {
  -- packer
  {'n','<Leader>pu',cmd('PackerUpdate'),opts(noremap,silent)},
  {'n','<Leader>pi',cmd('PackerInstall'),opts(noremap,silent)},
  {'n','<Leader>pc',cmd('PackerCompile'),opts(noremap,silent)},
  -- dashboard
  {'n','<Leader>n',cmd('DashboardNewFile'),opts(noremap,silent)},
  {'n','<Leader>ss',cmd('SessionSave'),opts(noremap,silent)},
  {'n','<Leader>sl',cmd('SessionLoad'),opts(noremap,silent)},
  -- nvimtree
  {'n','<Leader>e',cmd('NvimTreeToggle'),opts(noremap,silent)},
  -- Telescope
  {'n','<Leader>b',cmd('Telescope buffers'),opts(noremap,silent)},
  {'n','<Leader>fa',cmd('Telescope live_grep'),opts(noremap,silent)},
  {'n','<Leader>ff',cmd('Telescope find_files'),opts(noremap,silent)},
}
