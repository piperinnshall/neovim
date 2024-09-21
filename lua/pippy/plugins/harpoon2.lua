return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup()

        local list = harpoon:list()
        local opts = { noremap = true, silent = true }
        local map = vim.keymap.set

        map('n', '<leader>hm', function()
            harpoon.ui:toggle_quick_menu(list)
        end, opts)

        map('n', '<leader>ha', function()
            list:add()
        end, opts)

        for i = 1, 9 do
            map('n', string.format('<leader>h%d', i), function()
                list:select(i)
            end, opts)
        end
    end,
}
