if not vim.g.vscode then
  return {}
end

local enabled = {
  -- Increment stuff
  -- https://github.com/monaqa/dial.nvim
  'dial.nvim',

  -- Enhanced f/F/t/T motions
  -- https://github.com/ggandor/flit.nvim
  'flit.nvim',

  -- Lazy plugin manager
  'lazy.nvim',

  -- Enhanced motions with s
  -- https://github.com/ggandor/leap.nvim
  'leap.nvim',

  -- Enhanced textobjects (a/i)
  -- https://github.com/echasnovski/mini.ai
  'mini.ai',

  -- Enhanced comments ?
  -- https://github.com/echasnovski/mini.comment
  'mini.comment',

  -- Move any object
  -- https://github.com/echasnovski/mini.move
  'mini.move',

  -- Enhanced pairs detection
  -- https://github.com/echasnovski/mini.pairs
  'mini.pairs',

  -- Enhanced pairs manipulation
  -- https://github.com/echasnovski/mini.surround
  'mini.surround',

  -- Highlight framework
  -- https://github.com/nvim-treesitter/nvim-treesitter
  'nvim-treesitter',
  'nvim-treesitter-textobjects',
  'nvim-ts-context-commentstring',
  'ts-comments.nvim',

  -- Enhanced repeat (.) command
  -- https://github.com/tpope/vim-repeat
  'vim-repeat',

  -- Enhanced yanking/pasting
  -- https://github.com/gbprod/yanky.nvim
  'yanky.nvim',
}

local Config = require 'lazy.core.config'
Config.options.checker.enabled = false
Config.options.change_detection.enabled = false
Config.options.defaults.cond = function(plugin)
  return vim.tbl_contains(enabled, plugin.name) or plugin.vscode
end

-- Add some vscode specific keymaps
-- vim.api.nvim_create_autocmd('User', {
--   pattern = 'LazyVimKeymapsDefaults',
--   callback = function()
--     vim.keymap.set('n', '<leader><space>', '<cmd>Find<cr>')
--     vim.keymap.set('n', '<leader>/', [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>]])
--     vim.keymap.set('n', '<leader>ss', [[<cmd>call VSCodeNotify('workbench.action.gotoSymbol')<cr>]])
--   end,
-- })

return {
  {
    'LazyVim/LazyVim',
    config = function(_, opts)
      opts = opts or {}
      -- disable the colorscheme
      opts.colorscheme = function() end
      require('lazyvim').setup(opts)
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = { highlight = { enable = false } },
  },
}
