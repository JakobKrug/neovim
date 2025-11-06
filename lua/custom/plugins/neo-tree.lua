return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          visible = true, -- Show all files by default
          hide_dotfiles = false, -- Show .files
          hide_gitignored = false, -- Show gitignored files
          hide_hidden = false, -- Show hidden files
          never_show = { -- Only hide these specific files
            '.DS_Store',
            'thumbs.db',
            '.git',
          },
        },
        window = {
          mappings = {
            ['P'] = 'set_root',
          },
        },
      },
    }

    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Explorer' })
  end,
}
