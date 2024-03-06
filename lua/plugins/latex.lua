return {
  {
    'lervag/vimtex',
    -- Use init for configuration, don't use the more common "config".
    init = function()
      -- Syntax
      vim.cmd [[syntax enable]]
      -- Compiler
      -- NOTE: 'latexmk' is default and recommended; setting it explictly here
      vim.g.vimtex_compiler_method = 'latexmk'
      -- Viewer, ie. PDF reader (Skim works best on macOS)
      vim.g.vimtex_view_method = 'skim'
    end,
  },
  require('luasnip').config.set_config { -- Setting LuaSnip config
    enable_autosnippets = true,
  },
}
