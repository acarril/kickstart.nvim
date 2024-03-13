return {
  { -- Automatic session manager
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      }
    end,
  },

  {
    'rmagatti/session-lens',
    dependencies = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('session-lens').setup {
        theme = 'dropdown',
        path_display = { 'shorten' },
        theme_conf = { winblend = nil },
        previewer = false,
      }
      vim.keymap.set('n', '<C-s>', require('session-lens').search_session)
    end,
  },
}
