local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Disable Arrows
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<Up>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<Down>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<Left>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<Right>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<S-Up>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<S-Down>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<S-Left>', '<Nop>', opts)
map({ 'n', 'v', 'i', 's', 'x', 'o' }, '<S-Right>', '<Nop>', opts)

-- Misc
map('n', '-', function() vim.cmd('Ex') vim.cmd('doautocmd User NetrwEnter') end, opts)
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
map('n', '<leader>fp', function() require('fzf-lua').complete_path() end, opts)
map('n', '<leader>fb', function() require('fzf-lua').complete_bline() end, opts)
map('n', '<leader>fq', function() require('fzf-lua').quickfix() end, opts)
map('n', '<leader>fj', function() require('fzf-lua').jumps() end, opts)
map('n', '<leader>fc', function() require('fzf-lua').command_history() end, opts)
map('n', '<leader>fs', function() require('fzf-lua').spell_suggest() end, opts)

-- Harpoon
map('n', '<leader>hC', function() require('harpoon'):list():clear() end, opts)

map('n', '<M-a>', function() require('harpoon'):list():select(1) end, opts)
map('n', '<M-s>', function() require('harpoon'):list():select(2) end, opts)
map('n', '<M-d>', function() require('harpoon'):list():select(3) end, opts)
map('n', '<M-f>', function() require('harpoon'):list():select(4) end, opts)
map('n', '<M-z>', function() require('harpoon'):list():select(5) end, opts)
map('n', '<M-x>', function() require('harpoon'):list():select(6) end, opts)
map('n', '<M-c>', function() require('harpoon'):list():select(7) end, opts)
map('n', '<M-v>', function() require('harpoon'):list():select(8) end, opts)

map('n', '<leader>ha', function() require('harpoon'):list():replace_at(1) end, opts)
map('n', '<leader>hs', function() require('harpoon'):list():replace_at(2) end, opts)
map('n', '<leader>hd', function() require('harpoon'):list():replace_at(3) end, opts)
map('n', '<leader>hf', function() require('harpoon'):list():replace_at(4) end, opts)
map('n', '<leader>hz', function() require('harpoon'):list():replace_at(5) end, opts)
map('n', '<leader>hx', function() require('harpoon'):list():replace_at(6) end, opts)
map('n', '<leader>hc', function() require('harpoon'):list():replace_at(7) end, opts)
map('n', '<leader>hv', function() require('harpoon'):list():replace_at(8) end, opts)
