return
  {
      "jbyuki/nabla.nvim",
      dependencies = {
          "nvim-neo-tree/neo-tree.nvim",
          "mason-org/mason.nvim",
      },
      lazy = true,

      config = function()
          require("nvim-treesitter.configs").setup({
              ensure_installed = { "latex" },
              auto_install = true,
              sync_install = false,
          })
      end,

      keys = function()
          return {
              {
                  "<leader>p",
                  ':lua require("nabla").popup()<cr>',
                  desc = "NablaPopUp",
              },
              {
                "<leader>P",
                ':lua require"nabla".enable_virt({autogen=true})<cr>',
                desc = "Virt Lines",
              },
          }
      end,
  }


