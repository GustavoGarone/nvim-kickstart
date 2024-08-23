local root_files = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
}

vim.lsp.start {
    name = 'pylsp',
    cmd = 'pylsp',
    root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = trye})[1]),
    capabilities = require('user.lsp').make_client_capabilities(),
}
