return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local parser_install_dir = vim.fn.stdpath('data') .. '/site'

    vim.opt.runtimepath:append(parser_install_dir)

    local parsers = {
      'javascript', 'typescript', 'tsx', 'html', 'css',
      'json',
      'markdown', 'markdown_inline',
      'yaml',
      'bash',
      'regex',
      'astro',
      'vue',
      'svelte',
      'graphql',
      'scss',
      'ini',
      'toml',
      'sql',
      'proto',
      'prisma',
      'dockerfile',
      'lua',
    }

    require('nvim-treesitter.configs').setup({
      parser_install_dir = parser_install_dir,
      ensure_installed = parsers,
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'javascript', 'javascriptreact',
        'typescript', 'typescriptreact',
        'html', 'css', 'json',
        'lua', 'vim', 'markdown', 'bash'
      },
      callback = function()
        local buf = vim.api.nvim_get_current_buf()
        local max_filesize = 100 * 1024
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return
        end
        pcall(vim.treesitter.start, buf)
      end,
    })

    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true
      }
    })

    require('ts_context_commentstring').setup({
      enable_autocmd = false,
    })
  end
}
