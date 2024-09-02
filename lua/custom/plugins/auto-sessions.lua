return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
  },
  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    lazy_support = true,
    session_lens = {
      previewer = false,
    },
  },
  config = function(_, opts)
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    require('auto-session').setup(opts)
  end,
}
