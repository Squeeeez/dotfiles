local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/thierry/src/jdtls/workspace/' .. project_name
local config = {
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    cmd = {'/home/thierry/src/jdtls/bin/jdtls', '--jvm-arg=-javaagent:/home/thierry/src/jdtls/lombok.jar', '-data', workspace_dir},
}
require('jdtls').start_or_attach(config)

-- nnoremap <A-o> <Cmd>lua require('jdtls').organize_imports()<CR>
-- nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
-- vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
-- nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
-- vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
-- vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>
