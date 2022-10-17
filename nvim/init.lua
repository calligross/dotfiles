-- strongly advided by nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("plugins")
require("user.options")

require("user.bufferline")
require("user.comment")
require("user.dap")
require("user.dap-go")
require("user.dapui")
require("user.gotests-nvim")
require("user.indent-blankline")
require("user.lsp-config")
require("user.lualine")
require("user.luasnip")
require("user.nvim-autopairs")
require("user.nvim-cmp")
require("user.nvim-dap-virtual-text")
-- require("user.nvim-tree")
require("user.telescope")
require("user.tree-sitter")

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
  require("user.macos")
end

if is_win then
  require("user.windows")
end
