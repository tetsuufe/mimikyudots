return {
  {
    "mason-org/mason.nvim",
     config= function()
        require("mason").setup()
      end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config= function()
        require("mason-lspconfig").setup({
          ensure_installed = {"lua_ls", "texlab", "pyright"}
        })
      end
  },
  {
    "neovim/nvim-lspconfig",
      config= function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
        lspconfig.texlab.setup({
          capabilities = capabilities
      })
        lspconfig.pyright.setup({
          capabilities = capabilities
      })
      end
  },
}
