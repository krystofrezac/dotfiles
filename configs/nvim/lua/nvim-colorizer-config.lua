require'colorizer'.setup{}

vim.api.nvim_command('autocmd BufRead * :ColorizerAttachToBuffer')
