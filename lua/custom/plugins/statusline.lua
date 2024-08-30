return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      extensions = {
        'neo-tree',
      },
      options = {
        section_separators = { left = ' ', right = ' ' },
      },
      sections = {
        lualine_x = { 'filetype' },
      },
    },
  },
}
