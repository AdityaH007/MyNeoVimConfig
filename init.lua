print("Welcome Aditya")
require("orion")

local cmp = require('cmp')
local lspconfig = require('lspconfig')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    -- Add other sources you want to use here
  },
})

-- C/C++
lspconfig.clangd.setup({
  capabilities = {
    completionProvider = true,
    -- Add other capabilities you want to enable here
  },
  -- Add other configuration options for clangd here
})



-- Python
lspconfig.pyright.setup({
  capabilities = {
    completionProvider = true,
    -- Add other capabilities you want to enable here
  },
  -- Add other configuration options for pyright here
})

require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
