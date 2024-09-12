return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
        'MunifTanjim/nui.nvim',
        {
            'rcarriga/nvim-notify',
            opts = {
                background_colour = '#000000',
            },
        },
    },
    opts = {
        -- add any options here
        notify = {
            enabled = true,
        },
    },
}
