local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("bufferline not found")
    return
end

-- bufferline setting
-- https://github.com/akinsho/bufferline.nvim#configuration
bufferline.setup({
    options = {
        mode = 'buffers',
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true,
            }
        },
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or "")
                s = s .. n .. sym
            end
            return s
        end,
    },
})
