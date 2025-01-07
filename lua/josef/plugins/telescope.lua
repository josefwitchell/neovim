return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            },
            pickers = {
                help_tags = {
                    mappings = {
                        i = {
                            ["<CR>"] = "file_vsplit",
                        }
                    }
                }
            }
        })

        telescope.load_extension("fzf")

        local builtin = require 'telescope.builtin'

        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help_tags' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find keymaps' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
        vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = 'Find current Word' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep CWD' })
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Find Recent Files' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find existing buffers' })
        vim.keymap.set('n', '<leader>fi', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = 'Find in file' })
    end
}
