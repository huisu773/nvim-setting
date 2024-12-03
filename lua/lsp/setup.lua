require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup {
	ensure_installed = {
			"lua_ls",
			"bashls",
			"clangd",
			"cmake",
			"cssls",
			"dockerls",
			"docker_compose_language_service",
			"gopls",
			"html",
			"jsonls",
			"marksman",
			"pylsp",
	}
}

-- keymap
local nvim_lsp = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup_handlers({
    function(server_name)
        local opts = {}

        opts.on_attach = function(_, bufnr)
            local bufopts = { silent = true, buffer = bufnr }
            vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", bufopts)
            vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", bufopts)
            vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
            vim.keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", bufopts)
            vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", bufopts)
            vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", bufopts)
            vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", bufopts)
            vim.keymap.set("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", bufopts)
            vim.keymap.set("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", bufopts)
            vim.keymap.set("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", bufopts)
            vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", bufopts)
        end
        nvim_lsp[server_name].setup(opts)
    end
})

-- language config
require("lsp.config.lua")
