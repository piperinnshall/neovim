return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    config = function()
        require('harpoon').setup({
            vim.api.nvim_exec_autocmds('User', { pattern = 'HarpoonLoaded' }),
        })
    end,
}
