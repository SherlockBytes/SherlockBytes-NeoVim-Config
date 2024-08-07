-- Disable compatibility with vi
vim.opt.compatible = false

-- Enable filetype detection, plugin, and indent
vim.cmd("filetype indent plugin on")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Highlight the 80th column with a red background
vim.cmd("highlight ColorColumn ctermbg=red")
vim.opt.colorcolumn = "80"

-- Enable hidden buffers
vim.opt.hidden = true

-- Enable enhanced command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:list", "full" }

-- Show (partial) command in the last line of the screen
vim.opt.showcmd = true

-- Highlight search results
vim.opt.hlsearch = true

-- Disable compatibility with vi
vim.opt.compatible = false

-- Enable filetype detection, plugin, and indent
vim.cmd("filetype indent plugin on")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Highlight the 80th column with a red background
vim.cmd("highlight ColorColumn ctermbg=red")
vim.opt.colorcolumn = "80"

-- Enable hidden buffers
vim.opt.hidden = true

-- Enable enhanced command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:list", "full" }

-- Show (partial) command in the last line of the screen
vim.opt.showcmd = true

-- Highlight search results
vim.opt.hlsearch = true

-- Additional settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.autoindent = true
vim.opt.startofline = false
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.confirm = true
vim.opt.visualbell = true
vim.opt.cmdheight = 2
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 200
vim.opt.list = true
vim.opt.listchars = { tab = ">-", trail = "-", nbsp = "+", eol = "$" }

-- Highlight settings
vim.cmd("highlight NonText ctermfg=Gray guifg=Gray")
vim.cmd("highlight Whitespace ctermfg=Gray guifg=Gray")
vim.cmd("match Whitespace /\\s\\+/")

-- Backup and swap file directories
vim.opt.backupdir = "~/.config/nvim/tmp"
vim.opt.directory = "~/.config/nvim/tmp"

-- Tab and indentation settings
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Key mappings
vim.keymap.set("n", "Y", "y$", { noremap = true })
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true })

-- Load additional plugins with LazyVim
require("config.lazy")

-- Performance optimization
vim.opt.lazyredraw = true

-- Enhanced search
vim.opt.incsearch = true

-- Better visuals
vim.opt.termguicolors = true

-- Improved file navigation
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Persistent undo
vim.opt.undodir = "~/.config/nvim/undo"
vim.opt.undofile = true

-- Whitespace management
vim.opt.showbreak = "↪ "
