local cmd = vim.api.nvim_create_autocmd
local opts = { noremap = true, silent = true }
local map = vim.keymap.set

cmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local lspopts = { buffer = event.buf }
        map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', lspopts)
        map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', lspopts)
        map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', lspopts)
        map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', lspopts)
        map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', lspopts)
        map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', lspopts)
        map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', lspopts)
        map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', lspopts)
        map({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', lspopts)
        map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', lspopts)
    end,
})

cmd('FileType', {
    pattern = { 'java', 'kotlin' },
    desc = 'Set up Gradle commands for Java and Kotlin files',
    callback = function()
        map('n', '<leader>gb', "<cmd>TermExec cmd='./gradlew build'<cr>", opts)
        map('n', '<leader>gr', "<cmd>TermExec cmd='./gradlew run'<cr>", opts)
        map('n', '<leader>gt', "<cmd>TermExec cmd='./gradlew test'<cr>", opts)
    end,
})
