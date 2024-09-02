if not vim.g.vscode then
  return {}
end

local vscode = require 'vscode'

-- Rename symbol
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename)

-- Format document
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)

-- Go to References
vim.keymap.set('n', 'gr', vim.lsp.buf.references)

-- Code action
vim.keymap.set('n', '<leader>ca', function()
  vscode.call 'editor.action.quickFix'
end)

-- Organize imports
vim.keymap.set('n', '<leader>co', function()
  vscode.call 'editor.action.organizeImports'
end)

-- Search file
vim.keymap.set('n', '<leader>sf', '<cmd>Find<cr>')

-- Search open tabs
vim.keymap.set('n', '<leader><leader>', '<cmd>Find<cr>')

-- Symbols in workspace
vim.keymap.set('n', '<leader>ws', function()
  vscode.call 'workbench.action.showAllSymbols'
end)

-- Symbols in document
vim.keymap.set('n', '<leader>ds', function()
  vscode.call 'workbench.action.gotoSymbol'
end)

-- Diagnostic markers
vim.keymap.set('n', '[d', function()
  vscode.call 'editor.action.marker.prev'
end)

vim.keymap.set('n', ']d', function()
  vscode.call 'editor.action.marker.next'
end)

-- Folding
vim.keymap.set('n', 'za', function()
  vscode.call 'editor.toggleFold'
end, { desc = 'toggle fold' })

vim.keymap.set('n', 'zA', function()
  vscode.call 'editor.toggleFoldRecursively'
end, { desc = 'toggle fold recursively' })

vim.keymap.set('n', 'zm', function()
  vscode.call 'editor.fold'
end, { desc = 'fold' })

vim.keymap.set('n', 'zM', function()
  vscode.call 'editor.foldAll'
end, { desc = 'fold all' })

vim.keymap.set('n', 'zr', function()
  vscode.call 'editor.unfold'
end, { desc = 'unfold' })

vim.keymap.set('n', 'zR', function()
  vscode.call 'editor.unfoldAll'
end, { desc = 'unfold all' })

-- Sidebar visibility (similar to neotree)
vim.keymap.set('n', '\\', function()
  vscode.call 'workbench.action.toggleSidebarVisibility'
end)
