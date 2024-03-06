return {
  {
    'sainnhe/everforest',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.g.everforest_transparent_background = 1
      vim.g.everforet_background = 'hard'
      vim.cmd.colorscheme 'everforest'
    end,
  },
}
