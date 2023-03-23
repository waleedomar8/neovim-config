local lsp = require("lsp-zero")
local lsp_config = require('lspconfig')
lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver'
})

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp_config.intelephense.setup({
  settings = {
    intelephense = {
      stubs = {
         "wordpress",
                "woocommerce",
                "acf-pro",
                "wordpress-globals",
                "wp-cli"
      },
      
         files = {
                maxSize = 5000000;
            }
      
    }
  }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

