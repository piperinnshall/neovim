local cmd = vim.api.nvim_create_autocmd
---@diagnostic disable-next-line: unused-local
local au = vim.api.nvim_create_augroup
local map = vim.keymap.set
---@diagnostic disable-next-line: unused-local
local opts = { noremap = true, silent = true }

cmd('LspAttach', {
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
        map('n', 'gs', function() require('fzf-lua').lsp_signature_help() end, lspopts)
        map('n', 'go', function() require('fzf-lua').lsp_typedefs() end, lspopts)
        map('n', 'gr', function() require('fzf-lua').lsp_references() end, lspopts)
        map('n', 'ga', function() require('fzf-lua').lsp_code_actions() end, lspopts)
        map('n', 'gf', function() require('fzf-lua').lsp_finder() end, lspopts)
    end,
})
