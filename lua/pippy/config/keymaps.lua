local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Disable Arrows
map({'n', 'v', 'i', 's', 'x', 'o', 'c', 't'}, '<Up>', '<Nop>', opts)
map({'n', 'v', 'i', 's', 'x', 'o', 'c', 't'}, '<Down>', '<Nop>', opts)
map({'n', 'v', 'i', 's', 'x', 'o', 'c', 't'}, '<Left>', '<Nop>', opts)
map({'n', 'v', 'i', 's', 'x', 'o', 'c', 't'}, '<Right>', '<Nop>', opts)

-- Misc
map('n', '-', ':Ex<cr>', opts)
map('n', '<leader>d', '<cmd>Noice dismiss<cr>', opts)
map('n', '<Leader>e', '<cmd>execute "edit".stdpath("config")<cr>', opts)
map('n', '<leader>l', '<cmd>Lazy<cr>', opts)
map('n', '<leader>t', '<cmd>silent !iterm -t -to<cr>', opts)
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', opts)

-- Diagnostics
map('n', 'gl', function() vim.diagnostic.open_float() end, opts)
map('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
map('n', ']d', function() vim.diagnostic.goto_next() end, opts)

-- Files
map('n', '<leader>ff', function() require('fzf-lua').files() end, opts)
map('n', '<leader>fl', function() require('fzf-lua').live_grep() end, opts)
map('n', '<leader>fg', function() require('fzf-lua').git_files() end, opts)
map('n', '<leader>fd', function() require('fzf-lua').diagnostics_workspace() end, opts)
map('n', '<leader>fm', function() require('fzf-lua').marks() end, opts)
map('n', '<leader>fp', function() require('fzf-lua').complete_path() end, opts)
map('n', '<leader>fb', function() require('fzf-lua').complete_bline() end, opts)

-- Harpoon
map('n', '<M-a>', function() require('harpoon'):list():select(1) end, opts)
map('n', '<M-s>', function() require('harpoon'):list():select(2) end, opts)
map('n', '<M-d>', function() require('harpoon'):list():select(3) end, opts)
map('n', '<M-f>', function() require('harpoon'):list():select(4) end, opts)
map('n', '<M-j>', function() require('harpoon'):list():select(5) end, opts)
map('n', '<M-k>', function() require('harpoon'):list():select(6) end, opts)
map('n', '<M-l>', function() require('harpoon'):list():select(7) end, opts)
map('n', '<M-;>', function() require('harpoon'):list():select(8) end, opts)

map('n', '<leader>ha', function() require('harpoon'):list():replace_at(1) end, opts)
map('n', '<leader>hs', function() require('harpoon'):list():replace_at(2) end, opts)
map('n', '<leader>hd', function() require('harpoon'):list():replace_at(3) end, opts)
map('n', '<leader>hf', function() require('harpoon'):list():replace_at(4) end, opts)
map('n', '<leader>hj', function() require('harpoon'):list():replace_at(5) end, opts)
map('n', '<leader>hk', function() require('harpoon'):list():replace_at(6) end, opts)
map('n', '<leader>hl', function() require('harpoon'):list():replace_at(7) end, opts)
map('n', '<leader>h;', function() require('harpoon'):list():replace_at(8) end, opts)
