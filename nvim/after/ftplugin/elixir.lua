vim.cmd [[ autocmd BufRead,BufNewFile *.ex set filetype=elixir ]]
vim.cmd [[ autocmd FileType elixir let b:dispatch = 'elixir %' ]]
-- vim.cmd [[ autocmd BufWritePost *.ex :Dispatch! ]]
