local status, lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')
-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  -- Formating
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

lsp.tsserver.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' }
}

lsp.sumneko_lua.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
}
