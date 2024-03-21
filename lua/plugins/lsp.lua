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
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.ansiblels.setup({})
            lspconfig.terraformls.setup({})
            lspconfig.docker_compose_language_service.setup({})
            lspconfig.nil_ls.setup({})
        end
    }
}
