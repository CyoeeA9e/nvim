return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
    'echasnovski/mini.pick', -- optional
  },
  keys = {
    {
      '<leader>g',
      '<Cmd>Neogit<CR>',
      mode = 'n',
      desc = 'Neo[g]it',
    },
  },
  config = true,
}
