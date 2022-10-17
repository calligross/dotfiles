local options = {
  showtabline = 2,
  tabstop = 2,
  expandtab = true,
  shiftwidth = 2,
  splitright = true, -- Add new windows on the right
  splitbelow = true, -- Add new windows below
  number = true,
  relativenumber = true,
  cmdheight = 1,
  autoindent = true,
  smartcase = true,
  smartindent = true,
  wrap = false,
  updatetime = 300,
  undofile = true,
  numberwidth = 4,
  termguicolors = true,
  cursorline = true,
  winblend = 0,
  wildoptions = 'pum',
  pumblend = 5,
  hlsearch = true, -- highlight search results
  incsearch = true, -- show where the pattern, as it was typed so far, matches
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.cmd [[colorscheme dracula]]
vim.cmd [[colorscheme carbonfox]]
vim.cmd [[let mapleader=";"]]

local mapOpts = {
  noremap = true
}

-- remove highlighted text
vim.keymap.set('n', '<leader>h', ':nohl<cr>', mapOpts)
-- save the current buffer to file
vim.keymap.set('n', '<c-s>', ':w<cr>', mapOpts)

vim.keymap.set('n', "x", '"_x')
vim.keymap.set('n', '<leader>d', ':bdelete<cr>', mapOpts)

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = { "*.go", "*.lua" },
  callback = function()
    vim.lsp.buf.format({ async = true })
  end
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = { "*" },
  command = "set nopaste"
})
