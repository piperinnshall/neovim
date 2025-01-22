local cmd = vim.api.nvim_create_autocmd
local au = vim.api.nvim_create_augroup
local map = vim.keymap.set
local auopts = { clear = true }
---@diagnostic disable-next-line: unused-local
local keyopts = { noremap = true, silent = true }

-- Netrw
local netrw = au('NetrwGroup', auopts)

local last_file = ''

cmd('BufEnter', {
    group = netrw,
    callback = function()
        local full_path = vim.fn.expand('%:p')
        last_file = vim.fn.fnamemodify(full_path, ':t')
    end,
})

vim.api.nvim_create_autocmd('User', {
    pattern = 'NetrwEnter',
    group = netrw,
    callback = function()
        local file_list = vim.fn.getline(1, '$')

        if type(file_list) ~= 'table' then
            file_list = {}
        end

        for index, filename in ipairs(file_list) do
            if filename == last_file then
                vim.cmd(tostring(index))
                break
            end
        end
    end,
})

-- LSP
local lsp = au('LspGroup', auopts)

cmd('LspAttach', {
    group = lsp,
    desc = 'LSP actions',
    callback = function(event)
        local lspopts = { buffer = event.buf }
        map('n', 'K', function() vim.lsp.buf.hover() end, lspopts)
        map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, lspopts)
        map('n', 'gR', function() vim.lsp.buf.rename() end, lspopts)
        map('n', 'gi', function() vim.lsp.buf.implementation() end, lspopts)
        map('n', 'gI', function() require('fzf-lua').lsp_implementations() end, lspopts)
        map('n', 'gd', function() require('fzf-lua').lsp_definitions() end, lspopts)
        map('n', 'gD', function() require('fzf-lua').lsp_declarations() end, lspopts)
        map('n', 'go', function() require('fzf-lua').lsp_typedefs() end, lspopts)
        map('n', 'gr', function() require('fzf-lua').lsp_references() end, lspopts)
        map('n', 'ga', function() require('fzf-lua').lsp_code_actions() end, lspopts)
        map('n', 'gf', function() require('fzf-lua').lsp_finder() end, lspopts)
    end,
})
