return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'EdenEast/nightfox.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Nightfox variant
    local style = 'nightfox'

    -- Returns the palette of the specified colorscheme
    local palette = require('nightfox.palette').load(style)

    -- Configure colorscheme with transparent background plus some tweaks
    -- NOTE: this should work with opts = {}? I think `config` runs before `opts`
    -- so the colorscheme is set before passing opts.
    require('nightfox').setup {
      options = { transparent = true },
      groups = {
        all = {
          TelescopeBorder = { fg = palette.cyan.dim },
        },
      },
    }

    -- Load the colorscheme here
    vim.cmd.colorscheme(style)
    vim.api.nvim_set_hl(0, 'lualine_c_normal', { bg = 'pink', fg = '#abb2bf' })

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=italic'
  end,
}
