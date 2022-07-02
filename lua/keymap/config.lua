-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
-- recommend some vim mode key defines in this file

local keymap = require('core.keymap')
local map,silent,noremap = keymap.map,keymap.silent,keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

-- Use space as leader key
vim.g.mapleader = " "

-- usage example
map {
  -- leaderkey
  {'n',' ','',opts(noremap)},
  {'x',' ','',opts(noremap)},
  -- noremal remap
  -- close buffer
  {'n',"<C-x>k",cmd('bdelete'),opts(noremap,silent)},
  -- save
  {'n',"<C-s>",cmd('write'),opts(noremap)},
  -- yank
  {'n',"Y",'y$',opts(noremap)},
  -- buffer jump
  {'n',"]b",cmd('bp'),opts(noremap)},
  {'n',"[b",cmd('bp'),opts(noremap)},
  -- remove trailing white space
  {'n',"<Leader>t",cmd('TrimTrailingWhitespace'),opts(noremap)},
  -- window jump
  {'n',"<C-h>",'<C-w>h',opts(noremap)},
  {'n',"<C-l>",'<C-w>l',opts(noremap)},
  {'n',"<C-j>",'<C-w>j',opts(noremap)},
  {'n',"<C-k>",'<C-w>k',opts(noremap)},

  -- insert mode
  {'i',"<C-h>",'<Bs>',opts(noremap)},

  -- commandline remap
  {'c','<C-b>','<Left>',opts(noremap)},
}
