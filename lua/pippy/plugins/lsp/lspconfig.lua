return {
    'neovim/nvim-lspconfig',
    event = {
        'BufReadPre',
        'BufNewFile',
    },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local lspconfig = require 'lspconfig'
        local mason = require 'mason'
        local mason_lspconfig = require 'mason-lspconfig'

        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        local symbols = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
        for type, icon in pairs(symbols) do
            local hl = 'DiagnosticSign' .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
        end

        local custom_setup = {
            lua_ls = true,
            jdtls = true,
        }

        local default_setup = function(server)
            if not custom_setup[server] then
                lspconfig[server].setup({
                    capabilities = lsp_capabilities,
                })
            end
        end

        lspconfig['lua_ls'].setup({
            capabilities = lsp_capabilities,
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME,
                            vim.fn.expand '~/Developer/lua/neovim',
                        },
                    },
                    diagnostics = {
                        globals = {
                            'vim',
                        },
                    },
                },
            },
        })

        mason.setup({})

        mason_lspconfig.setup({
            ensure_installed = {
                'lua_ls',
                'jdtls',
            },
            handlers = {
                default_setup,
            },
        })
    end,
}
