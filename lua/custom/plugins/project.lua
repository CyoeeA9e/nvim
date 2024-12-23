return {
  'LintaoAmons/cd-project.nvim',
  init = function()
    require('cd-project').setup {
      projects_config_filepath = vim.fs.normalize(vim.fn.stdpath 'data' .. '/cd-project.nvim.json'),
    }
  end,
}
