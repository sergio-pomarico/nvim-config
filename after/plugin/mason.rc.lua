local mason_status, mason = pcall(require, "mason")
if (not mason_status) then return end

local lspconfig_status, lspconfig = pcall(require, "mason-lspconfig")
if (not lspconfig_status) then return end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then return end

mason.setup({})

lspconfig.setup {
  automatic_installation = true,
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "sumneko_lua",
  },
}

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "eslint_d",
  },
  automatic_installation = true,
})
