vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
vim.opt.showmode = false
vim.opt.clipboard = 'unnamedplus'

require("config.lazy")
require("lazy").setup("plugins")

vim.keymap.set("n", "<C-p>", function() vim.cmd('Telescope find_files') end)
vim.keymap.set("n", "<C-t>", function() vim.cmd('NvimTreeToggle') end)
