return {
  {
    'ggandor/leap.nvim',
    config = function()
      -- vim.keymap.del('n', 's')
      -- require('leap').create_default_mappings()
      vim.keymap.set({ 'n', 'x', 'o' }, '<leader>j', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, '<leader>J', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')
    end,
  },
  {
    'ggandor/flit.nvim',
    dependencies = {
      'ggandor/leap.nvim',
    },
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        -- A string like "nv", "nvo", "o", etc.
        labeled_modes = 'v',
        -- Repeat with the trigger key itself.
        clever_repeat = true,
        multiline = true,
        -- Like `leap`s similar argument (call-specific overrides).
        -- E.g.: opts = { equivalence_classes = {} }
        opts = {},
      }
    end,
  },
}
