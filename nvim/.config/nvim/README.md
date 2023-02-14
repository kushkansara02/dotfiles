# Nvim Key Mappings Cheat Sheet

LEADER: `<Space>`

## LSP

### Insert

`<C-k>`: Function signature help

### Normal

`df`: Go to definition

`dc`: Go to declaration

`<Leader>D`: Type definition

`<Leader>ca`: Code action

`<Leader>tm`: Float terminal (enter and exit)

`mp`: Go to implementation

`[e`: Diagnostic jump prev

`]e`: Diagnostic jump next

`K`: Hover doc

`fi`: Find usages

`pd`: Peek definition

`re`: Rename

## Tabs and Windows

### Normal

`te`: New tab

`<Tab>` and `<S-Tab>`: Cycle tabs

`ss` and `sv`: Split window horizontally and vertically

`s<{arrow key}>` or `s(dir letter key)`: Navigate windows

`qq(dir letter key)`: Resize window

## Telescope

### Normal

`;f`: Find files

`;r`: Live grep

`////`: Buffers

`;t`: Help Tags

`;;`: Resume

`;e`: Diagnostics

`sf`: File Browser

`N`: Create file (in file browser)

`h`: Go to parent directory (in file browser)

`ts`: Treesitter (fns, vars, etc.)

## Utils

### Normal

`+`: Increment

`-`: Decrement

`dw`: Delete word backwards

`<C-a>`: Select all

`u`: Undo

`[p`: Go to previous file

### Visual

`>` and `<`: Indent block

## Git

### Normal

`gb`: Git blame

`go`: Go to github

`gs`: Git status

`gst`: Git stash

`gc`: Git commits

`gb`: Git branches

## LuaSnip

### Latex

`ma`: Alpha
`mb`: Beta
`mg`: Gamma

## Adding new language support

To be able to code in another language, you will mainly need to set up the language LSP, DAP, linters and formatting.
Mason will handle managing these packages.
Therefore, simply add your desired packages to `lspconfig.rc.lua` and `null-ls.rc.lua`, and then download the corresponding packages using Mason.
Also, add the language to `treesitter.rc.lua`.

