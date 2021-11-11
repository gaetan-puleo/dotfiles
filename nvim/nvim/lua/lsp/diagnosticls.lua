return {
    filetypes = {
      'javascript', 
      'javascriptreact', 
      'typescript', 
      'typescriptreact', 
    },
    init_options = {
      linters = {
        eslint = {
          -- command = './node_modules/.bin/eslint',
          command = 'eslint_d', -- faster than eslint
          rootPatterns = { '.git' },
          debounce = 100,
          args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
          sourceName = 'eslint',
          parseJson = {
            errorsRoot = '[0].messages',
            line = 'line',
            column = 'column',
            endLine = 'endLine',
            endColumn = 'endColumn',
            message = '[eslint] ${message} [${ruleId}]',
            security = 'severity'
          },
          securities = {
            [2] = 'error',
            [1] = 'warning'
          }
        },
      },
      formatters = {},
      filetypes = {
        javascript = 'eslint',
        javascriptreact = 'eslint',
        typescript = 'eslint',
        typescriptreact = 'eslint',
      },
      formatFiletypes = {}
    }
  }
