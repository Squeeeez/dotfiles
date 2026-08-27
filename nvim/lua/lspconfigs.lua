vim.diagnostic.config({
  virtual_text = {
    source = true,
  },
  float = {
    source = true,
  },
})

-- Setup language servers.
vim.lsp.enable({'lua_ls', 'pyright', 'clangd', 'cpplint', 'bashls', 'yamlls', 'elixirls', 'rust-analyzer'})
-- lspconfig.angularls.setup {}
-- lspconfig.dockerls.setup {}
-- lspconfig.yamlls.setup {
--   settings = {
--     yaml = {
--       schemaStore = {
-- 	url = "https://www.schemastore.org/api/json/catalog.json",
-- 	enable = true,
--       },
--       schemas = {
-- 	["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.0/all.json"] = "k8s/**",
-- 	-- ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.0/schema.json"] = "*api*.{yml,yaml}",
-- 	["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
-- 	["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {".gitlab-ci*.yml", ".gitlab-ci.yml"},
--       },
--     }
--   }
-- }
-- lspconfig.denols.setup {
--   on_attach = on_attach,
--   root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
-- }
-- lspconfig.ts_ls.setup {
--   on_attach = on_attach,
--   root_dir = lspconfig.util.root_pattern("package.json"),
--   single_file_support = false
-- }

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', 'ge', vim.diagnostic.jump({count=1, float=true}))
-- vim.keymap.set('n', 'gE', vim.diagnostic.jump({count=-1, float=true}))
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder,
    opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>gf', function()
      vim.lsp.buf.format { async = true }
    end, opts)

    -- ng
    -- local opts = { noremap = true, silent = true }
    -- local ng = require("ng");
    -- vim.keymap.set("n", "<leader>at", ng.goto_template_for_component, opts)
    -- vim.keymap.set("n", "<leader>ac", ng.goto_component_with_template_file, opts)
    -- vim.keymap.set("n", "<leader>aT", ng.get_template_tcb, opts)
  end,
})


