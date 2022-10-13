require("bufferline").setup {}

vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
