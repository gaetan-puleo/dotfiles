-- define new signs
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = true,
})
require("mason").setup()
require("lsp-format").setup {}
require'mason-tool-installer'.setup {

    -- a list of all tools you want to ensure are installed upon
    -- start; they should be the names Mason uses for each tool
    ensure_installed = {
        --lsp
        'json-lsp',
        'html-lsp',
        'css-lsp',
        'typescript-language-server',
        'cssmodules-language-server',
        'tailwindcss-language-server',
        'emmet-ls',
        'efm',
        -- linter
        'eslint_d',
        -- formatter
        'prettier',
    },

    -- if set to true this will check each tool for updates. If updates
    -- are available the tool will be updated.
    -- Default: false
    auto_update = false,

    -- automatically install / update on startup. If set to false nothing
    -- will happen on startup. You can use `:MasonToolsUpdate` to install
    -- tools and check for updates.
    -- Default: true
    run_on_start = true
}

function on_attach(client, bufnr) 
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local eslint = {
  lintCommand = "eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
  lintFormats = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %trror %m"},
  lintStdin = true,
  lintIgnoreExitCode = true,
  lintSource = "eslint",
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename ${INPUT}",
  formatStdin = true
}

local jq = {
  lintCommand = "jq .",
  lintFormats = {"parse %trror: %m at line %l, column %c"},
  lintSource = "jq"
}

local prettier = {
  formatCommand = 'prettierd "${INPUT}"',
  formatStdin = true
}

local shellcheck = {
  lintCommand = "shellcheck -f gcc -x -",
  lintStdin = true,
  lintFormats = {
    "%f:%l:%c: %trror: %m", "%f:%l:%c: %tarning: %m", "%f:%l:%c: %tote: %m"
  },
  lintSource = "shellcheck"
}

local languages = {
  css = {prettier},
  html = {prettier},
  javascript = {prettier, eslint},
  javascriptreact = {prettier, eslint},
  --json = {prettier, jq},
  markdown = {prettier},
  --pandoc = {prettier},
  sh = {shellcheck},
  typescript = {prettier, eslint},
  typescriptreact = {prettier, eslint},
  --yaml = {prettier}
}

require("mason-lspconfig").setup_handlers {
--         -- The first entry (without a key) will be the default handler
--         -- and will be called for each installed server that doesn't have
--         -- a dedicated handler.
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach
    }
  end,

  ['efm'] = function ()
    require("lspconfig").efm.setup {
      capabilities = capabilities,
      init_options = {
        documentFormatting = true
      },
      filetypes = vim.tbl_keys(languages),
      settings = {
        rootMarkers = {
        ".git", "package.json", "node_modules", "tsconfig.json"
        },
        languages = languages
      },
      on_attach = function (client, bufnr)
        require "lsp-format".on_attach(client)
        -- on_attach(client, bufnr)
        
      end
    }
  end
--         -- Next, you can provide targeted overrides for specific servers.
--         -- For example, a handler override for the `rust_analyzer`:
--         -- ["rust_analyzer"] = function ()
--             -- require("rust-tools").setup {}
--         -- end
}


