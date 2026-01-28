-- ============================================
-- KEYMAPS COMMUNS (Neovim + VSCode)
-- ============================================


-- ============================================
-- KEYMAPS SPÉCIFIQUES VSCODE
-- ============================================
if vim.g.vscode then
  -- File Navigation
  vim.keymap.set('n', '<leader>ff', function()
    vim.fn.VSCodeNotify('workbench.action.quickOpen')
  end, { silent = true, desc = 'Find Files' })

  vim.keymap.set('n', '<C-p>', function()
    vim.fn.VSCodeNotify('workbench.action.quickOpen')
  end, { silent = true, desc = 'Find Files' })

  vim.keymap.set('n', '<leader>fg', function()
    vim.fn.VSCodeNotify('workbench.action.findInFiles')
  end, { silent = true, desc = 'Grep Files' })

  vim.keymap.set('n', '<leader><leader>', function()
    vim.fn.VSCodeNotify('workbench.action.showAllEditors')
  end, { silent = true, desc = 'Show All Buffers' })

  -- Explorer & Views
  vim.keymap.set('n', '<leader>fe', function()
    vim.fn.VSCodeNotify('workbench.view.explorer')
  end, { silent = true, desc = 'Toggle File Explorer' })

  vim.keymap.set('n', '<leader>gs', function()
    vim.fn.VSCodeNotify('workbench.view.scm')
  end, { silent = true, desc = 'Git Status' })

  vim.keymap.set('n', '<leader>bl', function()
    vim.fn.VSCodeNotify('workbench.action.showAllEditorsByMostRecentlyUsed')
  end, { silent = true, desc = 'Buffer List' })

  -- Search & Replace
  vim.keymap.set('n', '<leader>s', function()
    vim.fn.VSCodeNotify('workbench.action.replaceInFiles')
  end, { silent = true, desc = 'Search and Replace' })

  -- LSP Actions
  vim.keymap.set('n', 'gd', function()
    vim.fn.VSCodeNotify('editor.action.revealDefinition')
  end, { silent = true, desc = 'Go to Definition' })

  vim.keymap.set('n', 'gD', function()
    vim.fn.VSCodeNotify('editor.action.revealDeclaration')
  end, { silent = true, desc = 'Go to Declaration' })

  vim.keymap.set('n', 'gi', function()
    vim.fn.VSCodeNotify('editor.action.goToImplementation')
  end, { silent = true, desc = 'Go to Implementation' })

  vim.keymap.set('n', 'gt', function()
    vim.fn.VSCodeNotify('editor.action.goToTypeDefinition')
  end, { silent = true, desc = 'Go to Type Definition' })

  vim.keymap.set('n', 'gr', function()
    vim.fn.VSCodeNotify('editor.action.goToReferences')
  end, { silent = true, desc = 'Go to References' })

  vim.keymap.set('n', 'K', function()
    vim.fn.VSCodeNotify('editor.action.showHover')
  end, { silent = true, desc = 'Show Hover' })

  vim.keymap.set('n', '<leader>la', function()
    vim.fn.VSCodeNotify('editor.action.quickFix')
  end, { silent = true, desc = 'Code Action' })

  vim.keymap.set('n', '<leader>lf', function()
    vim.fn.VSCodeNotify('editor.action.formatDocument')
  end, { silent = true, desc = 'Format Document' })

  vim.keymap.set('n', 'gR', function()
    vim.fn.VSCodeNotify('editor.action.rename')
  end, { silent = true, desc = 'Rename Symbol' })

  -- Window Navigation (Ctrl+w h/j/k/l)
  vim.keymap.set('n', '<C-w>h', function()
    vim.fn.VSCodeNotify('workbench.action.navigateLeft')
  end, { silent = true, desc = 'Navigate Left' })

  vim.keymap.set('n', '<C-w>j', function()
    vim.fn.VSCodeNotify('workbench.action.navigateDown')
  end, { silent = true, desc = 'Navigate Down' })

  vim.keymap.set('n', '<C-w>k', function()
    vim.fn.VSCodeNotify('workbench.action.navigateUp')
  end, { silent = true, desc = 'Navigate Up' })

  vim.keymap.set('n', '<C-w>l', function()
    vim.fn.VSCodeNotify('workbench.action.navigateRight')
  end, { silent = true, desc = 'Navigate Right' })

  -- Alt+h/j/k/l mappings
  vim.keymap.set('n', '<M-h>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateLeft')
  end, { silent = true, desc = 'Navigate Left' })

  vim.keymap.set('n', '<M-j>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateDown')
  end, { silent = true, desc = 'Navigate Down' })

  vim.keymap.set('n', '<M-k>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateUp')
  end, { silent = true, desc = 'Navigate Up' })

  vim.keymap.set('n', '<M-l>', function()
    vim.fn.VSCodeNotify('workbench.action.navigateRight')
  end, { silent = true, desc = 'Navigate Right' })

  -- Toggle Sidebar
  vim.keymap.set('n', '<C-b>', function()
    vim.fn.VSCodeNotify('workbench.action.toggleSidebarVisibility')
  end, { silent = true, desc = 'Toggle Sidebar' })
end

-- ============================================
-- KEYMAPS SPÉCIFIQUES NEOVIM STANDALONE
-- ============================================
if not vim.g.vscode then

end
