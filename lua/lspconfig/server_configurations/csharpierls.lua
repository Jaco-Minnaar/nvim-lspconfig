local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'csharpier-ls', '-m', 'stdio' },
    filetypes = { 'cs' },
    root_dir = function(fname)
      return util.root_pattern('*.sln', '.git')(fname)
    end,
  }
}
