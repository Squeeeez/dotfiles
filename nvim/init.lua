vim.opt.autoindent = true
--
--       autowrite: Automatically save modifications to files
--       when you use critical (external) commands.
vim.opt.autowrite = true
vim.opt.undofile = true
--
--       backup:  backups are for wimps  ;-)
vim.opt.backup = false
--
--       backspace:  '2' allows backspacing" over
--       indentation, end-of-line, and start-of-line.
--       see also "help bs".
vim.opt.backspace='2'
--
--       background:  Are we using a "light" or "dark" background?
vim.opt.background="dark"
--
--       compatible:  Let Vim behave like Vi?  Hell, no!
vim.opt.compatible = false
--
vim.opt.comments='b:#,:%,n:>,n:)'
vim.opt.dictionary={'/usr/share/dict/words','~/.vim/dictionary'}
vim.o.wildignore = '*.o,*.a,__pycache__'
-- expand words from dictionaries, too:
-- vim.opt.complete+=k
--       digraph:    allows entering special characters
--       by a combination of two characters -> :help digraph
vim.opt.digraph = false
--
--       "vi has two modes - one in which it beeps
--       and another in which it doesn't."
vim.opt.errorbells = false
--
--       expandtab:  Expand tabs to spaces
--                   See 'listchars' to make Tabs visible!
vim.opt.expandtab = true
--
--       formatoptions:  Options for the "text format" command ("gq")
--                       I need all those options (but 'o')!
vim.opt.formatoptions='qrnwl1j'
--
--       helpheight: zero disables this.
vim.opt.helpheight=0
--
--
--       hidden:  Allow "hidden" buffers.  A must-have!
vim.opt.hidden = true
--
--       hlsearch :  highlight search - show the current search pattern
vim.opt.hlsearch = true
--
--       icon:       i do not need no steekeen icon title string.
vim.opt.icon = true
vim.opt.title = true
--
-- set   iconstring  file of icon (icons?  on a terminal?  pff!)
-- set   iconstring
--
--       ignorecase:  ignore the case in search patterns?  NO!
vim.opt.ignorecase = false
vim.opt.smartcase = true
--
--       insertmode:
-- FAQ:  Q: How can I quit insertmode when using this option?
--       A: The option "insertmode" was not meant for "start Vim in
--       insert mode" only; the idea is to *stay* in insert mode.
--       Anyway, you can use the command |i_CTRL-O| to issue commands.
vim.opt.insertmode = false
--
--
--       iskeyword:
--       iskeyword=@,48-57,_,192-255   (default)
-- Add the dash ('-'), the dot ('.'), and the '@' as "letters" to "words".
-- This makes it possible to expand email and html addresses,
-- eg foobar@vim.org and http://www.vim.org/
vim.opt.iskeyword='@,48-57,_,192-255,-,.,:,/,@-@'
  -- map ,isk :set isk=@,48-57,_,192-255,-,.,:,/,@-@
--
--       joinspaces:
--       insert two spaces after a period with every joining of lines.
--       I like this as it makes reading texts easier (for me, at least).
vim.opt.joinspaces = false
--
--       laststatus:  show status line?  Yes, always!
--       laststatus:  Even for only one buffer.
vim.opt.laststatus=2
--
-- [VIM5]lazyredraw:  do not update screen while executing macros
vim.opt.lazyredraw = false
--
--       'list' + 'listchars': Great new feature of vim-5.3!
--       This tells Vim which characters to show for expanded TABs,
--       trailing whitespace, and end-of-lines.  VERY useful!!
-- Standard settings:
 -- set   list
vim.opt.list = true
-- set   listchars=tab:>-,trail:·,eol:$
vim.opt.listchars = { tab = '>-', trail = '·' ,eol = '$' }
--
--       magic:  Use 'magic' patterns  (extended regular expressions)
--       in search patterns?  Certainly!  (I just *love* "\s\+"!)
vim.opt.magic = true
--
--       2006-05-09: include angle brackets, too!
vim.opt.matchpairs="(:),{:},[:],<:>"
--
--       modeline:  Allow the last line to be a modeline - useful when
--       the last line in sig gives the preferred textwidth for replies.
vim.opt.modeline = true
vim.opt.modelines=1
--
--       number:  no line numbering.  line numbers take away eight
--       characters - and that's too much. four digits usually suffice.
vim.opt.number = true
--
--     nrformats: no "alpha", no "octal" ->
--               only de/increase numbers of decimal format.
vim.opt.nrformats = ''
--
--       pastetoggle
-- vim.opt.pastetoggle = '<f5>'
-- also turn on/off 'paste' from insert mode and show its current value:
-- imap   <f5> <esc>:set paste!<cr>:set paste?<cr>a
-- note that the mapping for F5 is defined for command mode -
-- and  that the pastetoggle is used within insert mode!
--
--       report: show a report when N lines were changed.
--               report=0 thus means "show all changes"!
vim.opt.report = 0
vim.opt.scrolloff = 5
--
--       ruler:       show cursor position?  Yep!
vim.opt.ruler = true
vim.opt.shell="zsh"
--
--       shiftwidth:  Number of spaces to use for each
--                    insertion of (auto)indent.
vim.opt.shiftwidth=8
--
--       shortmess:   Kind of messages to show.   Abbreviate them all!
--          New since vim-5.0v: flag 'I' to suppress "intro message".
vim.opt.shortmess='atIO'
--
--       showcmd:     Show current uncompleted command?  Absolutely!
vim.opt.showcmd = true
--
--       showmatch:   Show the matching bracket for the last ')'?
vim.opt.showmatch = true
--
--       showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
vim.opt.showmode = true
--
--       suffixes:    Ignore filename with any of these suffixes
--                    when using the ":edit" command.
--                    Most of these are files created by LaTeX.
vim.opt.suffixes={'.aux','.bak','.dvi','.gz','.idx','.log','.ps','.swp','.tar'}
--
--       startofline:  no:  do not jump to first character with page
--       commands, ie keep the cursor in the current column.
vim.opt.startofline = false
--
--       splitbelow:  Create new window below current one.
vim.opt.splitbelow = true
--
--       tabstop
vim.opt.tabstop=8
--
--       tagbsearch: use "binary search" on tags file? no.
--       why?  because i use my own structure -
--       and this breaks the binary structure.
-- set notagbsearch
--
--       tags: file for "tags" - search words
-- set   tags=~/.vim/mytags
--
--       textwidth
vim.opt.textwidth=0
--
--       title:
  -- set notitle = false
--
--       viminfo:  What info to store from an editing session
--                 in the viminfo file;  can be used at next session.
-- vim.opt.viminfo="\--200,%,'200,/100,:100,@100,f1,h"
vim.opt.shada = "!,\"200,%,'2000,/100,:100,@100,<50,s10,f1,h"
--
--       visualbell:
vim.opt.visualbell = false
--
--       whichwrap:
--       Allow jump commands for left/right motion to wrap to previous/next
--       line when cursor is on first/last character in the line:
vim.opt.whichwrap="<,>,h,l,[,]"
--
--       wildchar  the char used for "expansion" on the command line
--                 default value is "<C-E>" but I prefer the tab key:
-- vim.opt.wildchar='<TAB>'
--
--       wrapmargin:
vim.opt.wrapmargin=0
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.sbr='+'
--
--       writebackup:
--       i dont need backup files in my directories.
--       actually, i save my file right when i stop typing.
--       back in the olden days i lost some huge texts
--       because i was going for hours without saving.
--       well, i have learnt my lesson! ":w" is in my fingers now..
vim.opt.writebackup = false

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- ===================================================================
-- Customizing the command line
-- ===================================================================
-- Valid names for keys are:  <Up> <Down> <Left> <Right> <Home> <End>
-- <S-Left> <S-Right> <S-Up> <PageUp> <S-Down> <PageDown>  <LeftMouse>
--
-- Many shells allow editing in "Emacs Style".
-- Although I love Vi, I am quite used to this kind of editing now.
-- So here it is - command line editing commands in emacs style:
  map('c', '<C-A>', '<Home>')
  map('c', '<C-B>',    '<Left>')
  map('c', '<C-E>',    '<End>')
  map('c', '<C-F>',    '<Right>')
  map('c', '<C-N>',    '<End>')
  map('c', '<C-P>',    '<Up>')
  map('c', '<ESC>b',    '<S-Left>')
  map('c', '<ESC><C-B>', '<S-Left>')
  map('c', '<ESC>f',    '<S-Right>')
  map('c', '<ESC><C-F>', '<S-Right>')
  map('c', '<ESC><C-H>', '<C-W>')
-- Note:  More info about this is in the helptexts:  :help emacs-keys
--
-- ===================================================================
-- AUTOCOMMANDS:
-- Editing of email replies and Usenet followups - using autocommands
-- ===================================================================
--
-- First step:  Remove ALL auto-commands.  This avoids having the
-- autocommands twice when the vimrc file is sourced again.
-- autocmd!
--
-- Apply the muttrc coloring to my mutt setup files:
  --au BufNewFile,BufRead .mutt.*                   set ft=muttrc
--
-- SLRN: Apply mail.vim to postponed messages:
  --au BufNewFile,BufRead */postpone/*,muttng-*     set ft=mail
--
-- Set some options for "messages" (FileType "mail"):
-- au FileType mail set autoindent expandtab tabstop=4 textwidth=70
-- the following uses ethe short option names:
  --au FileType mail set ai et ts=4 tw=70
--
-- Some more autocommand examples which set the values for
-- "autoindent", "expandtab", "shiftwidth", "tabstop", and "textwidth":
-- using the "FileType" event:
-- au FileType c           set ai et sw=4 ts=4
-- au FileType perl        set ai et sw=4 ts=4
-- au FileType html        set ai    sw=2 ts=2
-- au FileType java        set ai    sw=4 ts=4
-- au BufEnter */drafts/*  set tw=72
--
-- ===================================================================
-- AutoCommands
-- ===================================================================
--
-- Autocommands are the key to "syntax coloring".
-- There's one command in your vimrc that should
-- load/source the file $VIM/syntax/syntax.vim
-- which contains the definition for colors and
-- the autocommands that load other syntax files
-- when necessary, ie when the filename matches
-- a given pattern, eg "*.c" or *".html".
--
-- just load the main syntax file when Vim was compiled with "+syntax"
  -- if has("syntax")
    -- The following sources the main syntax file,
    -- ie. "$VIM/syntax/syntax.vim", see ":help :syn-on":
      -- syntax on
    -- Redefine the color for "Comment":
    -- hi! Comment  term=bold ctermfg=cyan ctermbg=black guifg=blue guibg=black
--     hi! Comment            ctermfg=blue ctermbg=black guifg=blue guibg=black
      -- hi! Comment  term=NONE cterm=NONE
      -- hi! Comment  ctermfg=cyan ctermbg=black guifg=blue guibg=black
    --
    -- The standard background color for the GUI Vim is "blue".
    -- No, I don't know why.  But many users want to change this
    -- color to black so they can read the blue colored text.  ;-)
    -- Here's how:
    -- hi normal ctermbg=black guibg=black
    --
    -- Adjustments for editing messages:
    -- the following file contains commands
    -- which simply change a few colors:
    -- au Syntax mail  source ~guckes/.vim.mail.vim
  -- endif
--
-- Viewing PDF files in VIM
-- http://www.vim.org/tips/tip.php?tip_id=1356
  -- autocmd BufReadPre  *.pdf set ro
  -- autocmd BufReadPost *.pdf %!pdftotext -nopgbrk --%" -
-- ===================================================================
-- Last but not least...                                        THPXRF
-- ===================================================================
-- The last line is allowed to be a "modeline" with my setup.
-- It gives vim commands for setting variable values that are
-- specific for editing this file.  Used mostly for setting
-- the textwidth (tw) and the "shiftwidth" (sw).
-- Note that the colon within the value of "comments" needs to
-- be escaped with a backslash!  (Thanks, Thomas!)

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"
-- let maplocalleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    rocks = { enabled = false },
    defaults = { lazy = false },
    spec = {
        {
            'lervag/vimtex',
            ft = {'plaintex', 'tex', 'bib'},
            init = function()
                vim.g.vimtex_view_method = 'sioyek'
                vim.g.vimtex_fold_enabled = 1
                vim.g.vimtex_quickfix_open_on_warning = 0
                vim.g.vimtex_quickfix_autoclose_after_keystrokes = 2
                vim.g.vimtex_quickfix_ignore_filters = {
                    'Underfull',
                    'Overfull',
                }
                vim.g.latex_view_general_viewer = 'sioyek'
                -- vim.g.vimtex_callback_progpath = '/home/thierry/.local/share/bob/nvim-bin/nvim'
                vim.g.vimtex_callback_progpath = vim.v.progpath
                vim.g.vimtex_compiler_progname = 'latexmk'
                vim.g.tex_flavor='lualatex'
                vim.g.vimtex_view_enabled = 1
                vim.g.vimtex_view_automatic = 1
            end,
        },
        'easymotion/vim-easymotion',
        '907th/vim-auto-save',
        -- :CodeQueryMenu Unite Full
        'devjoe/vim-codequery',
        -- File explorer
        {
            'preservim/nerdtree',
             init = function()
                 nmap("<leader><tab>", ":NERDTreeToggle %<cr>")
             end,
        },
        'Xuyuanp/nerdtree-git-plugin',
        -- Git integration
        'tpope/vim-fugitive',
        {
            'kdheepak/lazygit.nvim',
            init = function()
                  nmap('<leader>gg', ':LazyGit<CR>')
            end,
        },
        'sindrets/diffview.nvim',
        'nvim-tree/nvim-web-devicons',
        -- 'christoomey/vim-conflicted',
        -- 'airblade/vim-gitgutter',
        'lewis6991/gitsigns.nvim',
        'BurntSushi/ripgrep',
        'sharkdp/fd',
        {
                'nvim-telescope/telescope.nvim',
                dependencies = {
                        'nvim-lua/plenary.nvim',
                },
                init = function()
                    nmap('<leader>ff', "require'telescope.builtin'.find_files")
                    nmap('<leader>fg', "require'telescope.builtin'.live_grep")
                    nmap('<leader>fb', "require'telescope.builtin'.buffers")
                    nmap('<leader>fh', "require'telescope.builtin'.help_tags")
                    vmap('<C-f>', 'y<ESC>:Telescope grep_string default_text=<c-r>0<CR>')
                end,
        },
        -- Linting
        'neomake/neomake',
        -- 'dense-analysis/ale',
        'junegunn/fzf.vim',
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes',
        'ryanoasis/vim-devicons',
        {
                'sagarrakshe/toggle-bool',
                init = function()
                        nmap('<leader>b', ':ToggleBool<CR>')
                end,
        },
        'Shougo/ddc.vim',
        -- 'vim-denops/denops.vim'
        'Shougo/ddc-ui-native',
        'Shougo/ddc-source-around',
        -- 'Shougo/ddc-around'
        'Shougo/ddc-matcher_head',
        'Shougo/ddc-sorter_rank',
        'Shougo/ddc-nvim-lsp',
        'tani/ddc-fuzzy',
        'tani/ddc-path',
        'statiolake/ddc-ale',
        'akinsho/git-conflict.nvim',
        {
            'nanozuki/tabby.nvim',
            event = 'VimEnter',
            dependencies = 'nvim-tree/nvim-web-devicons',
        },
        -- {
            --     'xolox/vim-easytags',
            --     dependencies = { "xolox/vim-misc" },
            -- },
            {
                'nvim-treesitter/nvim-treesitter',
                lazy = false,
                branch = 'main',
                build = ':TSUpdate',
                config = function()
                    require('nvim-treesitter').install({
                        "c", "cpp", "lua", "vim", "vimdoc", "query", "rust", "toml", "python"
                    })
                end,
            },
            'kosayoda/nvim-lightbulb',
            'antoinemadec/FixCursorHold.nvim',
            -- 'neovim/nvim-lspconfig',
            {
                'RRethy/vim-illuminate',
                config = function()
                    require('illuminate').configure({
                        providers = {
                            'lsp',
                            'regex',
                        },
                    })
                end,
            },
            'windwp/nvim-autopairs',
            {
                'nvim-neorg/neorg',
                ft = 'norg',
                opts = {
                        load = {
                                ["core.defaults"] = {}, -- Loads default behaviour
                                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                                ["core.dirman"] = { -- Manages Neorg workspaces
                                        config = {
                                                workspaces = {
                                                        notes = "~/notes",
                                                },
                                        },
                                },
                        },
                }
            },
            {
                    'mrcjkb/rustaceanvim',
                    init = function()
                        vim.g.rustaceanvim = {
                                tools = {
                                        test_executor = 'background'
                                }
                        }
                    end,
            },
            {
                'nvim-neotest/neotest',
                ft = { 'java', 'rust' },
                dependencies = {
                    "nvim-neotest/nvim-nio",
                    "nvim-lua/plenary.nvim",
                    "antoinemadec/FixCursorHold.nvim",
                    "nvim-treesitter/nvim-treesitter",
                    'mrcjkb/rustaceanvim',
                    'rcasia/neotest-java',
                },
                config = function()
                require("neotest").setup({
                        adapters = {
                            require('rustaceanvim.neotest'),
                            require("neotest-java")({
                                ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
                            })
                        }
                })
                end,
                keys = {
                        { "<leader>T", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run all tests in file" },
                }
            },
            -- 'jfpedroza/neotest-elixir'
            'rcarriga/nvim-notify',
            {
                'folke/lazydev.nvim', -- lua lsp nvim development
                ft = 'lua'
            },
            {
                    'folke/trouble.nvim',
                    opts = {}, -- for default options, refer to the configuration section for custom setup.
                    cmd = "Trouble",
                    keys = {
                            {
                                    "<leader>xx",
                                    "<cmd>Trouble diagnostics toggle<cr>",
                                    desc = "Diagnostics (Trouble)",
                            },
                            {
                                    "<leader>xX",
                                    "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                                    desc = "Buffer Diagnostics (Trouble)",
                            },
                            {
                                    "<leader>cs",
                                    "<cmd>Trouble symbols toggle focus=false<cr>",
                                    desc = "Symbols (Trouble)",
                            },
                            {
                                    "<leader>cl",
                                    "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                                    desc = "LSP Definitions / references / ... (Trouble)",
                            },
                            {
                                    "<leader>xL",
                                    "<cmd>Trouble loclist toggle<cr>",
                                    desc = "Location List (Trouble)",
                            },
                            {
                                    "<leader>xQ",
                                    "<cmd>Trouble qflist toggle<cr>",
                                    desc = "Quickfix List (Trouble)",
                            },
                    },

            },

            {
                'elixir-editors/vim-elixir',
                ft = 'elixir',
                dependencies = {
                    'elixir-tools/elixir-tools.nvim'
                },
                config = function()
                    local elixir = require('elixir')
                    local elixirls = require('elixir.elixirls')
                    elixir.setup({
                        elixirls = { settings = elixirls.settings { enableTestLenses = true } }
                    })
                end,
            },
            -- 'udalov/kotlin-vim'
            'tpope/vim-dispatch',
            'tpope/vim-repeat',
            'tpope/vim-surround', -- ysiw]
            'tpope/vim-commentary', -- gcc
            {
                'vim-scripts/argtextobj.vim',
                dependencies = {
                    'kana/vim-textobj-user',
                    'kana/vim-textobj-function',
                },
            },
            'adelarsq/vim-matchit',
            'chrisbra/matchit',
            {
                'mfussenegger/nvim-jdtls',
                ft = 'java',
            },
            {
                'mfussenegger/nvim-dap',
                ft = { 'java', 'c', 'cpp' },
            },
            {
                'theHamsta/nvim-dap-virtual-text',
                ft = { 'java', 'c', 'cpp' },
            },
            {
                'rcarriga/nvim-dap-ui',
                ft = { 'java', 'c', 'cpp' },
            },
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = { "ansiblels", "angularls", "dockerls", "docker_compose_language_service", "bashls", "yamlls", "ts_ls" },
                },
                dependencies = {
                    { "mason-org/mason.nvim", opts = {} },
                    "neovim/nvim-lspconfig",
                },
            },

            'echasnovski/mini.nvim',

            {
                'iamcco/markdown-preview.nvim',
                cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
                build = "cd app && yarn install",
                init = function()
                    vim.g.mkdp_filetypes = { "markdown" }
                end,
                ft = { "markdown" },
            },

            {
              'hrsh7th/nvim-cmp',
              event = "InsertEnter",
              dependencies = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
              },
              opts = function()
                  vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
                  local cmp = require("cmp")
                  return {
                    snippet = {
                      expand = function(args)
                        vim.snippet.expand(args.body)
                      end,
                    },
                    mapping = cmp.mapping.preset.insert({
                      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                      ['<C-f>'] = cmp.mapping.scroll_docs(4),
                      ['<C-Space>'] = cmp.mapping.complete(),
                      ['<C-e>'] = cmp.mapping.abort(),
                      ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    }),
                    sources = cmp.config.sources({
                      { name = 'nvim_lsp' },
                      { name = "nvim_lsp_signature_help" },
                      { name = "nvim_lua" },
                      { name = "path" },
                      { name = 'lazydev', group_index = 0 },
                    }, {
                        { name = 'buffer' },
                      })
                  }
             end,
            },
            'tridactyl/vim-tridactyl',
            'mrcjkb/rustaceanvim',
        },
    })

vim.g.auto_save = 1
vim.g.auto_save_silent = 1

vim.opt.shell = "/bin/sh"
vim.g.is_posix = 1

-- netrw
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
nmap('<leader>dd', '<cmd>Lexplore %:p:h<CR>')

vim.lsp.inline_completion.enable()
vim.lsp.inlay_hint.enable()
vim.lsp.linked_editing_range.enable()
vim.lsp.codelens.enable()
vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = true,
    underline = true,
    signs = true,
    update_in_insert = true
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'rust', 'javascript', 'java', 'python', 'c', 'h', 'cpp', 'hpp', 'lua', 'vim' },
    callback = function()
      vim.treesitter.start()
    end,
})

vim.g.argtextobj_pairs = "(:),{:},<:>,[:]"
vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
vim.g.qs_primary_color = '#e64553'
vim.g.qs_secondary_color = '#fe640b'
vim.g.qs_accepted_chars = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '{', '}', '[', ']', '<', '>'}

nmap("<leader>1", ":diffget LOCAL<CR>" )
nmap("<leader>2", ":diffget BASE<CR>"  )
nmap("<leader>3", ":diffget REMOTE<CR>")

-- mini.nvim modules setup
-- text objects:
require('mini.ai').setup({ mappings = {
    around_next = 'aN',
    inside_next = 'iN',
}})
require('mini.bracketed').setup()
local hipatterns = require('mini.hipatterns')
hipatterns.setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
    todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
    note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = hipatterns.gen_highlighter.hex_color(),
  },
})
require('mini.pick').setup()
require('mini.sessions').setup()
require('mini.starter').setup()

require('lspconfigs')

nmap('<leader><leader>', ':source $MYVIMRC<cr>')
nmap('ge', '<cmd>lua vim.diagnostic.jump({count=1, float=true})<CR>')
nmap('gE', '<cmd>lua vim.diagnostic.jump(count=-1, float=true})<CR>')

nmap('<leader><Return>', 'i<CR><Left><Esc>')
nmap('<C-J>', 'i<CR><Left><Esc>')

nmap('<leader>gb', ':wa <bar> :set makeprg="cd cmake && cmake .. -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && cmake --build . "<bar> :compiler gcc <bar> :make <CR>')

vim.opt.timeout = true
vim.opt.timeoutlen=1000
vim.opt.ttimeoutlen=100

vim.o.termguicolors = true
vim.cmd.colorscheme('elflord')
-- vim.cmd [[silent! colorscheme desert]]
-- vim.wo.colorcolumn = '80'

vim.opt.completeopt = 'menu,menuone,preview'
-- vim.opt.completeopt = 'menuone,noselect,noinsert'
vim.opt.spelllang='en_gb'
vim.opt.spell=false
vim.opt.encoding = 'utf-8'
vim.opt.mouse = 'a'

vim.g.guifont = 'Inconsolata-g'
