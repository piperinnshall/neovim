return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        preset = 'helix',
        spec = {
            mode = { 'n' },
            -- Groups
            { '<leader>f',  group = 'File' },
            { '<leader>h',  group = 'Harpoon' },

            -- Misc
            { '-',          desc = 'Explore Netrw' },
            { '<leader>d',  desc = 'Dismiss Notifications' },
            { '<Leader>e',  desc = 'Edit Neovim Config' },
            { '<Leader>l',  desc = 'Lazy Menu' },
            { '<Leader>t',  desc = 'Terminal Transperancy' },
            { '<Leader>u',  desc = 'Toggle Undotree' },

            -- Diagnostics
            { 'gl',         desc = 'Open Float' },
            { '[d',         desc = 'Go to Previous Diagnostic' },
            { ']d',         desc = 'Go to Next Diagnostic' },

            -- Files
            { '<leader>ff', desc = 'Find Files' },
            { '<leader>fl', desc = 'Live Grep' },
            { '<leader>fg', desc = 'Git Files' },
            { '<leader>fd', desc = 'Workspace Diagnostics' },
            { '<leader>fm', desc = 'Marks' },

            -- Harpoon
            { '<M-a>',      desc = 'Harpoon Select 1' },
            { '<M-s>',      desc = 'Harpoon Select 2' },
            { '<M-d>',      desc = 'Harpoon Select 3' },
            { '<M-f>',      desc = 'Harpoon Select 4' },
            { '<M-j>',      desc = 'Harpoon Select 5' },
            { '<M-k>',      desc = 'Harpoon Select 6' },
            { '<M-l>',      desc = 'Harpoon Select 7' },
            { '<M-;>',      desc = 'Harpoon Select 8' },

            { '<leader>ha', desc = 'Harpoon Replace 1' },
            { '<leader>hs', desc = 'Harpoon Replace 2' },
            { '<leader>hd', desc = 'Harpoon Replace 3' },
            { '<leader>hf', desc = 'Harpoon Replace 4' },
            { '<leader>hj', desc = 'Harpoon Replace 5' },
            { '<leader>hk', desc = 'Harpoon Replace 6' },
            { '<leader>hl', desc = 'Harpoon Replace 7' },
            { '<leader>h;', desc = 'Harpoon Replace 8' },
        },
        icons = {
            mappings = false,
        },
        win = {
            no_overlap = true,
            col = 0, -- positions the window on the left side
            -- You can also adjust the width and row if needed
            -- width = 20, -- adjust width as necessary
            -- row = 0, -- set row position if you need to adjust it
            padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
            title = true,
            title_pos = 'center',
            zindex = 1000,
            bo = {},
            wo = {},
        },
    },
    keys = {
        {
            '<leader>?',
            function() require('which-key').show() end,
            desc = 'Buffer Local Keymaps',
        },
    },
}
