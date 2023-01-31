# Neovim Config

This is a Neovim setup for development focused in:

- Python  
- TypeScript/JavaScript  
- Vue.js/Nuxt.js  
- Docker  
- Lua  

I integrates with Tmux, and includes a fairly standard set of Neovim plugins that will be maintained over time. 

## neovim version

0.8.0

## Shortcuts

### Window Management

`leader + sv` => split pane vertically  
`leader + sh` => split pane horizontally  
`leader + sx` => close current pane  
`leader + sm` => toggle maximise current pane

`alt + o` => open new tab  
`alt + x` => close current tab  
`alt + .` => go to next tab  
`alt + ,` => go to prev tab

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

`leader + p` => find files in directory structure  
`leader + r` => live grep

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
`K` => hover doc  
`leader + lo` => see outline on RHS

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
`ctrl + a + ,` => rename session  
`ctrl + a + x` => kill pane

### Other

`:Mason` => Language Support Management
