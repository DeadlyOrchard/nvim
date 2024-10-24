return {
  "dundalek/lazy-lsp.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
  },

  config = function()
    local lsp_zero = require("lsp-zero")

    lsp_zero.setup_servers({"clangd", "cmake", "html", "cssls"})

    lsp_zero.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings to learn the available actions
      lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
      })
    end)

    -- cmp keybinds
    local cmp = require("cmp")
    local cmp_action = require("lsp-zero").cmp_action()
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({select = false}), -- Ctrl+Enter to complete selection
        ["<Tab>"] = cmp_action.tab_complete(), -- Tab to go to next option
        ["<S-Tab>"] = cmp.mapping.select_prev_item({behavior = "select"}), -- Shift+Tab to go to previous option
      }),

      -- make suggestion window have a border
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end
}
