-- TelescopeMapArgs = TelescopeMapArgs or {}

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join Lines With Static Cursor" })
-- I don't need these as I'm used to CTRL-F CTRL-B
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Auto Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

-- Quickly toggle between next/previous buffers
vim.keymap.set("n", "<leader><leader>", "<cmd>b#<CR>");

-- rails
-- map_ctrlo_tele("rc", "find_files", { search_dirs = { "app/controllers"} })
-- map_ctrlo_tele("rm", "find_files", { search_dirs = { "app/models" } })
-- map_ctrlo_tele("rv", "find_files", { search_dirs = { "app/views" } })
-- map_ctrlo_tele("rj", "find_files", { search_dirs = { "app/javascript" } })

vim.keymap.set("n", "<leader>rc",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/controllers\" } })<CR>",
               { desc = "Open Rails Controllers"} )
vim.keymap.set("n", "<leader>rm",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/models\" } })<CR>",
               { desc = "Open Rails Models" } )
vim.keymap.set("n", "<leader>rv",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/views\" } })<CR>",
               { desc = "Open Rails Views" } )
vim.keymap.set("n", "<leader>rj",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/javascript\" } })<CR>",
               { desc = "Open Rails Javascripts" } )
vim.keymap.set("n", "<leader>rs",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/assets/stylesheets\" } })<CR>",
               { desc = "Open Rails Stylesheets" } )
vim.keymap.set("n", "<leader>rh",
               "<cmd>lua require('telescope.builtin')[\"find_files\"]({search_dirs = { \"app/helpers\" } })<CR>",
               { desc = "Open Rails Stylesheets" } )

vim.keymap.set("n", "<leader>oo",
               "<cmd>lua require('telescope.builtin')[\"oldfiles\"]({search_dirs = { \".\" } })<CR>",
               { desc = "Recent Files" } )
vim.keymap.set("n", "<leader>ob",
               "<cmd>lua require('telescope.builtin')[\"buffers\"]({search_dirs = { \".\" } })<CR>",
               { desc = "Open Buffers" } )

-- My Harpoon maps - under trial

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>ho", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>h6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>h7", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>h8", function() ui.nav_file(8) end)
vim.keymap.set("n", "<leader>h9", function() ui.nav_file(9) end)
