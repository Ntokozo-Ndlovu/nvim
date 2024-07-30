local cmp = require('cmp')

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<Tab>'] = cmp.mapping.confirm({select = true})
}),
})
