return { 'tpope/vim-sleuth',
    {
        'windwp/nvim-autopairs',
        opts = {}
    },
    {
        'phaazon/hop.nvim',
        config = function ()
            local hop = require('hop')
            hop.setup({})
            local directions = require('hop.hint').HintDirection
            vim.keymap.set('n', 'f', function ()
                hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
            end)
        end
    },
    {
        'folke/trouble.nvim',
        opts = {
            icons = false,
            fold_open = '-',
            fold_closed = '+',
            signs = {
                error = "*",
                warning = "*",
                hint = "*",
                information = "*",
                other = "*",
            }
        },
    },
    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help indent_blankline.txt`
        opts = {
            -- char = '┊',
            -- show_end_of_line = true,
            show_trailing_blankline_indent = false
        }
    } }
