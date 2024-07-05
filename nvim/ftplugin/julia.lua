if vim.fn.executable('julials') ~= 1 then
  return
end

local root_files = {
  '.git',
}

vim.lsp.start {
  name = 'julials',
  cmd = { 'julials' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true})[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
