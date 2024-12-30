local get_project_rustanalyzer_settings = function()
  local handle = io.open(vim.fn.resolve(vim.fn.getcwd() .. '/./.rust-analyzer.json'))
  if not handle then
    return {}
  end
  local out = handle:read '*a'
  handle:close()
  local config = vim.json.decode(out)
  if type(config) == 'table' then
    return config
  end
  return {}
end

return {
  commands = {
    ExpandMacro = {
      function()
        vim.lsp.buf_request_all(0, 'rust_analyzer/expandMacro', vim.lsp.util.make_position_params(), vim.print)
      end,
    },
  },
  settings = {
    ['rust-analyzer'] = vim.tbl_deep_extend('force', {}, get_project_rustanalyzer_settings(), {}),
  },
}
