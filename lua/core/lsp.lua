-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    local mappings = {
      g = {
        D = { vim.lsp.buf.declaration, "Go to declaration" },
        d = { vim.lsp.buf.definition, "Go to definition" },
        i = { vim.lsp.buf.implementation, "Go to implementation" },
        r = { vim.lsp.buf.references, "References" },
      },
      K = { vim.lsp.buf.hover, "Hover" },
      ['<C-k>'] = { vim.lsp.buf.signature_help, "Signature help" },
      ['<space>'] = {
        w = {
          a = { vim.lsp.buf.add_workspace_folder, "Add workspace folder" },
          r = { vim.lsp.buf.remove_workspace_folder, "Remove workspace folder" },
          l = { function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, "List workspace folders" },
        },
        D = { vim.lsp.buf.type_definition, "Type definition" },
        rn = { vim.lsp.buf.rename, "Rename" },
        ca = { vim.lsp.buf.code_action, "Code action" },
        f = { function() vim.lsp.buf.format { async = true } end, "Format" },
      },
    }

    local wk = require("which-key")
    wk.register(mappings, opts)
  end,
})

