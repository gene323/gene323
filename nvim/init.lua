vim.cmd [[colorscheme tokyonight]]
require('options')
require('plugins')
require('coc')
require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "lua", "cpp", "java", "python"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

require('indent_blankline').setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_conext_start = true,
}
require('nvim-surround').setup {}

require('lualine').setup {
    options = { theme = 'tokyonight' }
}

require('nvim-autopairs').setup {}
