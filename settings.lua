local options = vim.opt

-- Tabs / Indentation
options.tabstop = 2
options.shiftwidth = 2
options.softtabstop = 2
options.expandtab = true
options.smartindent = true
options.wrap = false

-- Search
options.incsearch = true
options.ignorecase = true
options.smartcase = true
options.hlsearch = false

-- Appearance
options.relativenumber = true
options.termguicolors = true
options.colorcolumn = "100"
options.signcolumn = "yes"
options.number = true
options.cmdheight = 1
options.scrolloff = 10
options.completeopt = "menuone,noinsert,noselect"

-- Behaviour
options.hidden = true
options.errorbells = false
options.swapfile = false
options.backup = false
options.undodir = "~/.vim/undodir"
options.undofile = true
options.backup = false
options.showmode = false
options.updatetime = 50
options.backspace = "indent,eol,start"
options.splitright = true
options.splitbelow = true
options.autochdir = true
options.iskeyword:append("-")
options.mouse:append("a")
options.clipboard:append("unnamedplus")

-- Other
options.exrc = true
options.guicursor =
	"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
options.backspace = "indent,eol,start"
options.encoding = "UTF-8"
