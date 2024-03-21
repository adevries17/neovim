return {
    {    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "rust_analyzer",
                    "lua_ls",
                    "ansiblels",
                    "terraformls",
                    "docker_compose_language_service",
                    "nil_ls", -- nix
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })

            lspconfig.ansiblels.setup({
                capabilities = capabilities
            })

            lspconfig.terraformls.setup({
                capabilities = capabilities
            })

            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
            })
            lspconfig.nil_ls.setup({
                capabilities = capabilities
            })
        end
    }
}
