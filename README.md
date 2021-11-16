# glamour.nvim

A colorscheme for Neovim, written in Lua, that mimics that colors used in the code snippets from the ReactJS docs.

## Requirements

You need to be running Neovim 0.5.0+

To take full advantage of the JavaScript and JSX highlighting this colorscheme offers, you'll need to add the following plugins:

[pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)

[MaxMEllon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)

## Installation

Install via package manager:
```vim
" If you are using Vim-Plug
Plug 'tjdevries/colorbuddy.nvim'
Plug 'pangloss/vim-javascript'    " Only needed if you want extended JS highlighting
Plug 'MaxMEllon/vim-jsx-pretty'   " Only needed if you want JSX highlighting
Plug 'taphill/glamour.nvim'
```

```lua
-- If you are using Packer
use 'tjdevries/colorbuddy.nvim'
use 'pangloss/vim-javascript'    -- Only needed if you want extended JS highlighting
use 'MaxMEllon/vim-jsx-pretty'   -- Only needed if you want JSX highlighting
use 'taphill/glamour.nvim'
```

Enable the colorscheme:

```vim 
" Vim-Script:
colorscheme glamour_nvim
```

```lua
-- Lua:
require('colorbuddy').colorscheme('glamour_nvim')
```

## Features

This is currently a work in progress.

If you would like to add specific features I would suggest forking this project, or starting a discussion.
