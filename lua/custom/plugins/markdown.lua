return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim', -- Note: Corrected namespace from nvim-mini to echasnovski
  },
  opts = {
    -- Enable rendering by default
    enabled = true,
    -- Render in normal, command, and terminal modes
    render_modes = { 'n', 'c', 't' },
    -- Maximum file size to render (MB)
    max_file_size = 10.0,
  },
  -- Optional: Only load for markdown files
  ft = { 'markdown' },
}
