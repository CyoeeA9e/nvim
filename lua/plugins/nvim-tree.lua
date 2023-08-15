return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        local function opts(desc)
            return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        require('nvim-tree').setup({
            renderer = {
                icons = {
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = true,
                        git = false,
                        modified = false,
                    },
                    glyphs = {
                        folder = {
                            arrow_closed = "+",
                            arrow_open = "-",
                        }
                    }
                }
            },
            -- on_attach = function (bufnr)
            --     local api = require('nvim-tree.api')
            --     api.config.mappings.default_on_attach(bufnr)
            --     -- vim.keymap.set('n', '<leader>ft', "<cmd>NvimTreeToggle<enter>", opts('Toggle'))
            -- end
        })
        vim.keymap.set('n', '<leader>ft', "<cmd>NvimTreeToggle<enter>", { desc = 'nvim-tree: Toggle visible'})
        -- vim.keymap.set('i', '<C-e>', "<cmd>NvimTreeToggle<enter>")
    end
}
