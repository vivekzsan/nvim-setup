return {
    {
        "voldikss/vim-floaterm",
        config = function()
            -- Floaterm Appearance Settings
            vim.g.floaterm_width = 0.8
            vim.g.floaterm_height = 0.8
            vim.g.floaterm_position = 'center'
            vim.g.floaterm_title = ' Terminal ($1/$2)'
            vim.g.floaterm_borderchars = '─│─│╭╮╯╰'
            vim.g.floaterm_opener = 'edit'

            -- Toggle existing floating terminal
            vim.keymap.set("n", "<leader>ft", ":FloatermToggle<CR>", { desc = "Toggle Floaterm" })
            vim.keymap.set("t", "<leader>ft", "<C-\\><C-n>:FloatermToggle<CR>", { desc = "Toggle Floaterm in terminal" })

            -- Open a new terminal
            vim.keymap.set("n", "<leader>t", ":FloatermNew<CR>", { desc = "New Floaterm" })

            -- Kill current terminal
            vim.keymap.set("n", "<leader>fk", ":FloatermKill<CR>", { desc = "Kill current Floaterm" })

            -- Kill all terminals
            vim.keymap.set("n", "<leader>tk", ":FloatermKill!<CR>", { desc = "Kill all Floaterms" })

            -- Cycle terminals (Alt+e)
            vim.keymap.set("n", "<A-e>", ":FloatermNext<CR>", { desc = "Next Floaterm" })
            vim.keymap.set("t", "<A-e>", "<C-\\><C-n>:FloatermNext<CR>", { desc = "Next Floaterm (from terminal)" })

            -- Use Alt+w to exit terminal + hide
            vim.cmd([[
                tnoremap <A-w> <C-\><C-n>
                autocmd FileType floaterm nnoremap <buffer> <A-w> :FloatermHide<CR>
            ]])
        end,
    },
}
