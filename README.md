# Neovim Config

Welcome to my NeoVim config. This config is written entirely in lua and includes the following plugins:

[comment.nvim](https://github.com/numToStr/Comment.nvim) - Commenting  
[copilot](https://github.com/zbirenbaum/copilot.lua) - Github copilot integration
[gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git status signs  
[indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Indentation UI
[leap](https://github.com/ggandor/leap.nvim) - Quick navigation in viewable text
[lspconfig](https://github.com/neovim/nvim-lspconfig) - Language Server Protocol support
[lspsaga](https://github.com/glepnir/lspsaga.nvim) - Enhanced LSP support
[lualine](https://github.com/nvim-lualine/lualine.nvim) - Statusline
[mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - Better mason and lsp-config integration
[efm-langserver](https://github.com/mattn/efm-langserver) - Linting and Formatting
[mason](https://github.com/williamboman/mason.nvim) - LSP installation management
[nord](https://github.com/shaunsingh/nord.nvim) - Nord colourscheme
[noice](https://github.com/folke/noice.nvim) - vim commandline ui
[nvim-notify](https://github.com/rcarriga/nvim-notify) - notification ui
[nvim-autopairs](https://github.com/windwp/nvim-autopairs) - autopair completion
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - auto-completion support
[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - file tree explorer
[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - file icons
[telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
[tmux-navigator](https;//github.com/christoomey/vim-tmux-navigator) - tmux window navigation
[transparent](https://github.com/xiyaowong/transparent.nvim) - background transparency
[trouble](https://github.com/nvim-tree/nvim-web-devicons) - prettier diagnostics
[vim-highlightedyank](machakann/vim-highlightedyank) - highlights yanked text
[vim-illuminate](https://github.com/RRethy/vim-illuminate) - illuminates instances of word under cursor
[whichkey](https://github.com/folke/which-key.nvim) - shortcut hints

## Neovim version supported  

^0.9.0

## Some Common Shortcuts

### Window Management  

`leader + sv` => split pane vertically    
`leader + sh` => split pane horizontally    
`leader + sx` => close current pane  
`leader + sm` => toggle maximise current pane

### Window Navigation

`ctrk + h` => move left  
`ctrk + k` => move up  
`ctrk + j` => move down  
`ctrk + l` => move move right

### Directory

`leader + m` => focus directory explorer  
`leader + f` => toggle directory explorer  
`H` => show hidden files in dir  
`I` => toggle show .gitignore files in dir  
`a` => add new file from directory view  
`r` => rename file from directory view  

### Find Files

`leader + ff` => find files in directory structure  
`leader + fg` => live grep

### Editing

`ctrl + /` => toggle comment selected text  
`gf` => show definition, references  
`gD` => go to declaration  
`gd` => peak declaration  
`gi` => go to implementation  
`leader + ca` => see available code actions  
`leader + rn` => rename  
`leader + ca` => code actions  
`leader + D` => show line diagnostics   
`pd` => jump to prev diagnostic in buffer  

`nd` => jump to next diagnostic in buffer  
`nd` => jump to next diagnostic in buffer    
`K` => hover doc  

#### tsserver  

`leader + rf` => rename file  
`leader + oi` => organise imports  
`leader + ru` => remove unused imports  

#### pyright  

`leader + oi` => organise imports  

### Vim Notes  

`ctrl + o` => go back  
`ctrl + i` => go next  
`:reg` => yank register  

### tmux

`ctrl + a + |` => split vertically  
`ctrl + a + -` => split horizontally  
`ctrl + a + j` => move split down  
`ctrl + a + k` => move split up  
`ctrl + a + h` => move split left  
`ctrl + a + l` => move split right  
`ctrl + a + m` => maximise  
`ctrl + a + c` => new session  
`ctrl + a + d` => close all  
`ctrl + a + $` => rename session  
`ctrl + a + x` => kill pane
`ctrl + a + ,` => rename session  
`ctrl + a + x` => kill pane  
`ctrl + a + w` => navigate windows 

### Other  

`:Mason` => Language Support Management  
