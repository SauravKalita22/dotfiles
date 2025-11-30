-- Custom Neovim options (safe with Kickstart)

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.cursorline = true -- highlight current line
opt.signcolumn = 'yes' -- always show sign column
opt.wrap = false -- disable line wrap
opt.termguicolors = true -- enable true colors

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Scrolling
opt.scrolloff = 8

-- Performance
opt.updatetime = 250
opt.timeoutlen = 400

opt.foldmethod = 'expr'
opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
opt.foldlevel = 99
opt.foldenable = true
return {}
