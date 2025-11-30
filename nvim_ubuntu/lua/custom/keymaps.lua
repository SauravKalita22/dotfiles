-- lua/custom/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- jk / kj to exit insert mode
map('i', 'jk', '<Esc>', opts)
map('i', 'kj', '<Esc>', opts)

-- Save
map('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save file' })

-- Quit
map('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit' })

-- Split navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Resize splits
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Move lines up/down
map('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move Line Down' })
map('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move Line Up' })

-- Duplicate line (VSCode style)
map('n', '<leader>d', 'yyp', { desc = 'Duplicate Line' })

-- Delete line without yanking
map('n', '<leader>D', '"_dd', { desc = 'Delete Line (No Yank)' })

-- Better indenting
map('n', '<', '<<', { desc = 'Indent Left' })
map('n', '>', '>>', { desc = 'Indent Right' })

-- Move words left/right
map('i', '<A-h>', '<C-Left>', { desc = 'Word Left' })
map('i', '<A-l>', '<C-Right>', { desc = 'Word Right' })

-- VISUAL MODE ---------------------------------------

-- Move lines up/down in Visual Mode
map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Line Down' })
map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Line Up' })

-- Indent keep selection
map('v', '<', '<gv', { desc = 'Indent Left' })
map('v', '>', '>gv', { desc = 'Indent Right' })

-- Duplicate selection
map('v', '<leader>d', "y'>p", { desc = 'Duplicate Selection' })

-- Clear search highlight
map('n', '<leader>h', '<cmd>nohlsearch<CR>', { desc = 'Clear highlight' })

-- Toggle comment for line or selection (Alt + /)
map('n', '<A-/>', 'gcc', { remap = true, desc = 'Toggle comment line' })
map('v', '<A-/>', 'gc', { remap = true, desc = 'Toggle comment selection' })
