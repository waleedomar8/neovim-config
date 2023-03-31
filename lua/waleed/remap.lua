vim.g.mapleader = " "

vim.keymap.set("i" , "jj" , "<ESC>")
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
vim.keymap.set("n" , "<leader>e" , ":NvimTreeToggle<CR>")
vim.keymap.set('n' , '<C-s>' , ':w<kEnter>')
vim.keymap.set('n' , '<leader>1' , ':tabprevious<CR>');
vim.keymap.set('n' , '<leader>2' , ':tabnext<CR>');
