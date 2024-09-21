local client = vim.lsp.start_client({
    name = 'proccesing-language-server',
    cmd = {
        'cd /Users/piperinnshall/Developer/kotlin/processing-language-server',
        './gradlew build',
    },
})

if not client then
    vim.notify "Error: didn't attach"
end
