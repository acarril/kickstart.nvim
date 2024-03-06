return {
  { -- You can easily change to a different d1c4a9olorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'EdenEast/nightfox.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Returns the palette of the specified colorscheme
      local palette = require('nightfox.palette').load 'nordfox'
      -- Configure colorscheme with transparent background plus some tweaks
      -- NOTE: this should work with opts = {}? I think `config` runs before `opts`
      -- so the colorscheme is set before passing opts.
      require('nightfox').setup {
        options = { transparent = true },
        groups = {
          nordfox = {
            TelescopeBorder = { fg = palette.cyan.dim },
          },
        },
      }

      -- Load the colorscheme here
      vim.cmd.colorscheme 'nordfox'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=italic'
    end,
  },
}
