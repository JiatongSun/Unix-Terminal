local servers = {
  "clangd",
  "lua_ls",
  "pyright",
}

local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end
mason.setup()

local mason_lsp_config_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lsp_config_status_ok then
  return
end
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
  },
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end
-- for _, server in pairs(servers) do
--   lspconfig[server].setup()
-- end
