# Neovim-dotfiles
My neovim custom dotfiles.

## Requirements
- Neovim >= 0.9

## Structure
```
nvim/
├── after/                       # Overrule default settings.
│   └── ftplugin/                # Filetype plugins.
│       └── python.lua           # Custom Python identation.
├── init.lua                     # Runs 'lua/settings/' and 'lua/bootstrap/'.
└── lua/                         # Lua scripts.
    ├── plugins/                 # Plugins scripts.
    │   ├── catppuccin.lua       # Colorscheme.
    │   ├── gitsigns.lua         # Git integration for buffers.
    │   ├── init.lua             # Get the name of every file inside 'plugins/' and returns it.
    │   ├── markdown-preview.lua # Markdown preview utility.
    │   ├── neoscroll.lua        # Smooth scrolling.
    │   ├── nvim-colorizer.lua   # Highlight color codes.
    │   ├── nvim-treesitter.lua  # Syntax highlight.
    │   └── todo-comments.lua    # Highlight comments like TODO, WARN etc.
    ├── settings/                # Neovim settings.
    │   ├── autocmds.lua         # Defines custom auto commands.
    │   ├── general.lua          # Configures common settings.
    │   ├── indent.lua           # Configures global indentation.
    │   ├── init.lua             # Runs every file inside 'settings/'.
    │   └── statusline.lua       # Defines a custom statuslines.
    └── bootstrap.lua            # Install Pckr and setups plugins.
```

