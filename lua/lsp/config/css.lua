return {
    on_setup = function(server)
        server:setup({
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
            settings = {
                css = {
                    validate = true,
                },
                less = {
                    validate = true,
                },
                scss = {
                    validate = true,
                },
            },
            flags = {
                debounce_text_changes = 150,
            },
            on_attach = function(client, bufnr)
                client.resolved_capabilities.document_formatting = false
                client.resolved_capabilities.document_range_formatting = false
                local function buf_set_keymap(...)
                    vim.api.nvim_buf_set_keymap(bufnr, ...)
                end
            end,
        })
    end,
}

