local search_rustanalyzer_settings = function()
  local search_up
  search_up = function(dir)
    if dir == nil or dir == '/' then
      return nil
    end
    local rust_analyzer_json = dir .. '/.rust-analyzer.json'
    if vim.fn.filereadable(rust_analyzer_json) == 1 then
      return rust_analyzer_json
    end
    return search_up(vim.fn.fnamemodify(dir, ':h'))
  end
  return search_up(vim.fn.getcwd())
end

local get_project_rustanalyzer_settings = function()
  -- local handle = io.open(vim.fn.resolve(vim.fn.getcwd() .. '/./.rust-analyzer.json'))
  local file = search_rustanalyzer_settings()
  if not file then
    return {}
  end
  local handle = io.open(file)
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
