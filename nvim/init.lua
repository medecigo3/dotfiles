vim.cmd("let g:netrw_liststyle = 3") -- Tree explorer for built-in file explorer
local opt = vim.opt -- for conciseness

--Appends Dropbox workspace to Nvim runtime path
opt.runtimepath:prepend("/Users/medecigo3/Dropbox/devArturo/workspaces/Linux/.config/nvim")

-- line numbers
--opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

require("config.lazy")
