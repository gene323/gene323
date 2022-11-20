vim.g.encoding = 'UTF-8'
vim.opt.fileencoding = 'UTF-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.mouse = 'a'
vim.opt.cursorline = true
vim.opt.background = 'dark'
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.cmd [[ syntax enable ]]

vim.api.nvim_create_autocmd({'BufRead', 'BufNewfile'}, {
    pattern = {'*.html', '*.json'},
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
        vim.opt.softtabstop = 2
    end
})
