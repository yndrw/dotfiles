-- [[ Leader ]]

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ plugin: lazy ]]
require("config.lazy")

-- [[ key maps ]]
require("config.remap")

-- [[ vim configurations ]]
require("config.vim_config")

-- [[ Basic Autocommands ]]
require("config.autocommands")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
