-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>hw', ':Neotree git_status reveal float<CR>', desc = 'git [w]orkspace status' },
  },
  opts = {
    close_if_last_window = true,
    sources = { 'filesystem', 'buffers', 'git_status' },
    filesystem = {
      window = {
        position = 'right',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
