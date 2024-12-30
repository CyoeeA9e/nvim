local toggle_term_by_window_size = function()
  local width = vim.o.columns
  local height = vim.o.lines
  if width >= height then
    vim.cmd 'ToggleTerm direction=horizontal'
  else
    vim.cmd 'ToggleTerm direction=vertical'
  end
end

return {
  'akinsho/toggleterm.nvim',
  opts = {
    start_in_insert = true,
    persist_mode = false,
  },
  keys = {
    { '<C-\\><C-\\>', toggle_term_by_window_size, mode = 'n', desc = 'Toggle terminal' },
    { '<C-\\><C-\\>', toggle_term_by_window_size, mode = 't', desc = 'Toggle terminal' },
  },
}
