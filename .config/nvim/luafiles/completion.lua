local capabilities = vim.lsp.protocol.make_client_capabilities()
local util = require 'lspconfig/util'
local lsp = require 'lspconfig'
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.ccls.setup{
  capabilities = capabilities,
  init_options = { client = {snippetSupport = true}, completion = {placeholder = true} },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = util.root_pattern("compile_commands.json", "compile_flags.txt", "platformio.ini"),
}

lsp.clangd.setup {
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp" },
  }

lsp.pyls.setup {
  capabilities = capabilities,
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "bash", "cpp", "css", "html", "python", "regex", "lua"}, 
  highlight = {
    enable = true 
  },
}
