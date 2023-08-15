return {
    'nvim-tree/nvim-tree.lua',
    config = function()
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
            }
        })
    end
}
