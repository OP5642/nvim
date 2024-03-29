local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()

require "user.lsp.ccls"
