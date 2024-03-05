return {
  {
    'lervag/vimtex',
    -- Use init for configuration, don't use the more common "config".
    init = function()
      -- Syntax
      vim.cmd [[syntax enable]]
      -- Viewer, ie. PDF reader (Skim works best on macOS)
      vim.g.vimtex_view_method = 'skim'
    end,
  },
}
