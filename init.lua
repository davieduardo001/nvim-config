--------------
-- MY CONFIG FILE FOR NEOVIM
-- date: 17/02/2023
-- name: Ed Miranda
--------------

local g = vim.g
local o = vim.o
local opt = vim.opt
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

---colors
o.termguicolors = true

---update time
o.timeoutlen = 500
o.updatetime = 200

---numbers of line will keep above the cursor
o.scrolloff = 8

---editor UI
o.number = true
o.numberwidth = 2
o.signcolumn = "yes"
o.cursorline = true

---editor UX
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
opt.mouse = "a"
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1
o.list = true

---makes nvim yank to the clipboard
o.clipboard = "unnamedplus"

---case insensitive
o.ignorecase = true
o.smartcase = true

---map leader
g.mapleader = " "
g.maplocalleader = " "

---KEYBINDS

map("i", "jk", "<ESC>", opts)
map("n", "<leader>q", "<CMD>q<CR>", opts)
map("n", "<leader>s", "<CMD>w<CR>", opts)
map("n", "<leader>e", "<CMD>Lexplore<CR>", opts)


--PACKAGES
vim.cmd [[packadd packer.nvim]]
vim.cmd 'colorscheme habamax'
--vim.cmd 'colorscheme dracula'

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colors
    use {'dracula/vim', as = 'dracula'}
end)
