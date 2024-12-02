local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree not found")
    return
end

local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    local map = vim.keymap.set
    -- default mappings
    api.config.mappings.default_on_attach(bufnr)
    -- custom mappings
    -- open file
    map('n', '<CR>', api.node.open.edit, opts('Open'))
    map('n', 'o', api.node.open.edit, opts('Open'))
    map('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
    -- split screen and open file
    map('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
    map('n', 'h', api.node.open.horizontal, opts('Open: Horizontal Split'))
    -- show hidden file
    map('n', 'i', api.tree.toggle_custom_filter, opts('Toggle Filter: Hidden'))
    map('n', '.', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
    -- files operation
    map('n', 'R', api.tree.reload, opts('Refresh'))
    map('n', 'a', api.fs.create, opts('Create File Or Directory'))
    map('n', 'd', api.fs.remove, opts('Delete'))
    map('n', 'r', api.fs.rename, opts('Rename'))
    map('n', 'x', api.fs.cut, opts('Cut'))
    map('n', 'c', api.fs.copy.node, opts('Copy'))
    map('n', 'p', api.fs.paste, opts('Paste'))
    -- change dir
    map('n', '<C-j>', api.tree.change_root_to_parent, opts('Up'))
    -- help
    map('n', '?', api.tree.toggle_help, opts('Help'))
end

nvim_tree.setup({
    on_attach = on_attach,
    -- git status icon
    git = {
        enable = true,
    },
    -- project nvim plugin setting
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    -- hide hidden file and others
    filters = {
        dotfiles = true,
        custom = { 'node_modules' },
    },
    view = {
        -- width
        width = 40,
        -- left/right
        side = 'left',
        -- hide line number
        number = false,
        relativenumber = false,
        -- show icon
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            -- resize window
            resize_window = true,
            -- quit when open
            quit_on_open = false,
        },
    },
    -- wsl-open or open
    system_open = {
        cmd = 'open', -- mac 直接设置为 open
    },
})

-- auto close
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
