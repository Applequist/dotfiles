local M = {}

-- Wrapper around vim.keymap.set
-- Set `silent` to true by default
function M.map(mode, lhs, rhs, opts)
  local modes = type(mode) == "string" and { mode } or mode
  opts = opts or {}
  opts.silent = opts.silent ~= false
  if opts.remap and not vim.g.vscode then
    opts.remap = nil
  end
  vim.keymap.set(modes, lhs, rhs, opts)
end

return M
