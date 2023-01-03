utils = require("core.utils")
utils.setOptions(require("core.options"))
utils.set_mappings(require("core.mappings").general)
utils.set_mappings(require("core.mappings").movement)
utils.set_mappings(require("core.mappings").layout)

require("core.packer")
require("core.mappings")
require("plugin.nvim-tree")
require("plugin.nvim-cmp")
require("plugin.nvim-treesitter")

require('github-theme').setup({
  theme_style = "dark_default"
})
