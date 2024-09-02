return {
  {
    'echasnovski/mini.ai',
    event = 'VeryLazy',
    opts = { n_lines = 500 },
    config = function(_, opts)
      require('mini.ai').setup(opts)
    end,
  },
  {
    'echasnovski/mini.surround',
    event = 'VeryLazy',
    config = function(_, opts)
      require('mini.surround').setup(opts)
    end,
  },
}
