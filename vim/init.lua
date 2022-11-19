-- Vadim's NVim Config
local packer = require('packer')
local set = vim.opt

-- key mapper helper
local mapKey = function(mode, key, result)
  vim.keymap.set(mode, key, result, { noremap = true, silent = true, buffer = bufnr })
end

-- Global
set.visualbell = true
set.errorbells = false
set.backup = false                    -- No backups
vim.bo.swapfile = false               -- No swap files
set.writebackup = false

-- Set the undo directory
set.undodir = vim.fn.stdpath('config') .. 'undodir' 
set.undofile = false                   -- Disable undo file

-- Syntax
set.syntax.on = true                  -- Turn syntax highlighting on
set.re = 0                            -- Use new regular expression engine to fix issues with TypeScript
-- set.filetype.plugin.indent = true  -- Turn on file type detection for indentation
set.showmatch = true                  -- Show matching brackets

-- Spelling
set.spell = true                      -- Enable spell check
vim.bo.spelllang = 'en_us'            -- Spell check for English

 -- Editing
vim.wo.number = true                  -- Show line numbers
vim.wo.relativenumber = true          -- Show relative line numbers
set.wrap = true                       -- wrap long lines
set.textwidth = 100                   -- Line wrap (number of cols)
set.undolevels = 1000	                -- Number of undo levels

-- Backspace behavior
set.backspace = {'indent', 'eol', 'start'} 
vim.bo.autoindent = true	            -- Auto-indent new lines
vim.bo.smartindent = true	            -- Enable smart-indent
set.scrolloff = 8                     -- Scroll when 8 lines away

-- Tabs and Spaces
set.tabstop = 2                       -- Global tab width
set.shiftwidth = 2                    -- And again, related
set.softtabstop = 2                   -- Soft tab stops
set.expandtab = true                  -- Use spaces instead of tabs

-- Folding
set.foldmethod = 'syntax'             -- fold using syntax
set.foldenable = false                -- open files unfolded, zm to restore folds

-- Status Line
set.laststatus = 2                    -- Show the status line all the time
set.ruler = true                      -- Show row and column ruler information

-- Last line
set.showcmd = true                    -- Display incomplete commands
set.modeline = true                   -- Show the mode line
set.showmode = true                   -- Display the mode you're in

-- Command line mode
set.wildmenu = true                   -- Enhanced command line completion
set.wildmode = 'list:longest'         -- Complete files like a shell

-- Completion
set.completeopt = {'menuone', 'noinsert', 'noselect'}

--- Search
set.incsearch = true                  -- Highlight matches as you type
set.hlsearch = true                   -- Highlight matches
set.ignorecase = true                 -- Case-insensitive searching
set.smartcase = true                  -- But case-sensitive if expression contains a capital letter

-- Buffers and Splits
set.hidden = true                     -- Allow buffer change w/o saving
set.splitbelow = true                 -- Split down and focus
set.splitright = true                 -- Split right and focus

-- Install Packer
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
packer.startup(function(use)
  use 'wbthomason/packer.nvim'           -- Packer can manage itself
  use 'tpope/vim-commentary'             -- commentary.vim: comment stuff out
  use 'tpope/vim-surround'               -- surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
  use 'Raimondi/delimitMate'             -- Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'            -- Configurations for Nvim LSP

  -- fzf ❤️ vim
  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  use 'NLKNguyen/papercolor-theme'       -- 🎨 Light & Dark Vim color schemes inspired by Google's Material Design
  use 'folke/tokyonight.nvim'            -- 🏙 A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins

  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html' }
  }

  -- use 'sheerun/vim-polyglot'
end)

-- TreeSitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'astro',
    'javascript',
    'typescript',
    'tsx',
    'yaml',
    'html', 
    'markdown',
    'css',
    'scss',
    'regex',
    'lua'
  },
  highlight = {
    enable = true,
  }
}

-- LSP
local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- npm install -g @tailwindcss/language-server
require'lspconfig'.tailwindcss.setup{
  on_attach = on_lsp_attach,
  flags = lsp_flags,
}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{
  on_attach = on_lsp_attach,
  flags = lsp_flags,
}

-- npm install -g vscode-langservers-extracted
require'lspconfig'.eslint.setup{
  on_attach = on_lsp_attach,
  flags = lsp_flags,
}

require'lspconfig'.astro.setup{}

-- Visual
set.termguicolors = false             -- Terminal colors support
set.background = 'light'              -- Set a light background
-- set.background = 'dark'            -- Set a dark background
-- set.colorcolumn = 100              -- Set a color column

-- vim.cmd[[colorscheme PaperColor]] 
vim.cmd[[colorscheme tokyonight-day]] 

vim.wo.signcolumn = 'yes'
-- Set the color for the color column
-- highlight Normal     ctermbg = none
-- highlight nonText    ctermbg = none
-- highlight LineNr     ctermbg = NONE guibg = NONE
-- highlight ColorColumn ctermbg = 254 guibg = lightgrey
-- highlight ColorColumn ctermbg = 237 guibg = lightgrey

-- Netrw
-- vim.g.netrw_browse_split = 2          -- open files in a vertical split
vim.g.netrw_banner = 0                -- don't show the info banner
-- vim.g.netrw_winsize = 30

-- Key Remapping
vim.g.mapleader = ' '                 -- Space is my leader

-- lsp
mapKey('n', '<leader>ge', vim.diagnostic.open_float)     -- go error
mapKey('n', '<leader>ge(', vim.diagnostic.goto_prev)     -- go error previous
mapKey('n', '<leader>ge)', vim.diagnostic.goto_next)     -- go error next
mapKey('n', '<leader>gel', vim.diagnostic.setloclist)    -- go error list

local on_lsp_attach = function(client, bufnr)
  print('Attaching to ' .. client.name)

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', vim.lsp.omnifunc)        -- use LSP completion for omnifunc <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'tagfunc', vim.lsp.tagfunc)          -- Ctrl+] for go to definition using LSP instead of ctags
  vim.api.nvim_buf_set_option(bufnr, 'formatexpr', vim.lsp.formatexpr)  -- Code formatting (gq etc) using LSP

  mapKey('n', '<leader>gd', vim.lsp.buf.definition)        -- go definition
  mapKey('n', '<leader>gD', vim.lsp.buf.declaration)       -- go declaration
  mapKey('n', '<leader>gt', vim.lsp.buf.type_definition)   -- go type definition
  mapKey('n', '<leader>gi', vim.lsp.buf.implementation)    -- go implementation
  mapKey('n', '<leader>gh', vim.lsp.buf.hover)             -- go hover
  mapKey('n', '<leader>gH', vim.lsp.buf.signature_help)    -- go signature help
  mapKey('n', '<leader>gr', vim.lsp.buf.references)        -- go references

  mapKey('n', '<leader>gR', vim.lsp.buf.rename)            -- go rename
  mapKey('n', '<leader>ga', vim.lsp.buf.code_action)       -- go code action
  mapKey('n', '<leader>gf', function()                     -- go format
    vim.lsp.buf.format { async = true }
  end)
end

mapKey('n', '<leader>ns' ,':set nospell<CR>')
mapKey('n', '<leader>nh' ,':noh<CR>')
mapKey('n', '<leader>gp' ,':PrettierAsync<CR>') 
mapKey('n', '<leader>y', '"+y')
mapKey('n', '<leader>y', '"+y')
-- mapKey('v', 'J', ":m '>+1<CR>gv=gv")
-- mapKey('v', 'K', ":m '<-2<CR>gv=gv")

-- Normal Mode Mappings
------------------------------------------------------------------------
mapKey('n', '0', '^')                                    -- replace 0 with ^

-- Vimrc Motions - V
------------------------------------------------------------------------
mapKey('n', '<leader>ve', ':tabedit $MYVIMRC<CR>')       -- vim edit
mapKey('n', '<leader>vr', ':source $MYVIMRC<CR>')        -- vim reload

-- File Motions - F
-----------------------------------------------------------------------
mapKey('n', '<C-s>', ':w<CR')
mapKey('n', '<leader>fs', ':w<CR>')                      -- file save
mapKey('n', '<leader>ff', ':Explore<CR>')                -- file file
mapKey('n', '<leader>fv', ':Vexplore <CR>')              -- file vertical
mapKey('n', '<leader>fh', ':Hexplore <CR>')              -- file horizontal

-- Buffer Motions - B
------------------------------------------------------------------------
mapKey('n', '<leader><tab>', ':b#<CR>')
mapKey('n', '<leader>bb', ':Buffers<CR>')                -- buffer buffer
mapKey('n', '<Leader>bd', ':exe "bn|:bd#"<CR>')          -- buffer delete

-- Project Motions - P
------------------------------------------------------------------------
mapKey('n', '<leader>pf', ':GFiles<CR>')                 -- project find

-- Splits Motions - W
------------------------------------------------------------------------
mapKey('n', '<leader>-', ':split<CR>')
mapKey('n', '<leader>/', ':vsp<CR>')
mapKey('n', '<leader>0', ':wincmd _<CR> :wincmd|<CR>')
mapKey('n', '<leader>=', ':wincmd =<CR>')

-- Terminal Motions - T
------------------------------------------------------------------------
mapKey('t', '<Esc>', '<C-\\><C-n>')

-- Toggles Motions - C
------------------------------------------------------------------------
-- mapKey('n', '<leader>cn', ':call NumberToggle()<CR>')     -- Change Number
mapKey('n', '<leader>cnh', ':set nornu nonu <CR>')        -- Change Number Hide
mapKey('n', '<leader>cns', ':set number<CR>')             -- Change Number Show

-- Auto Commands
------------------------------------------------------------------------
vim.cmd [[
autocmd VimResized * :wincmd=     " automatically rebalance windows on Vim resize
autocmd FocusLost * :wa           " save file on focus lost
]]

-- FZF
vim.cmd [[
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[1]}), <bang>0)
]]

-- " Relative numbering
-- function! NumberToggle()
--   if(&relativenumber == 1)
--     set nornu
--     set number
--   else
--     set rnu
--   endif
-- endfunc
