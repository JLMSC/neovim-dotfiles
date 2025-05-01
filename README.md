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
├── init.lua                     # Runs options and bootstrap.
└── lua/                         # Lua scripts.
    ├── plugins/                 # Plugins scripts.
    │   ├── catppuccin.lua       # Colorscheme.
    │   ├── markdown-preview.lua # Markdown preview utility.
    │   ├── neoscroll.lua        # Smooth scrolling.
    │   ├── nvim-colorizer.lua   # Highlight color codes.
    │   ├── nvim-treesitter.lua  # Syntax highlight.
    │   └── todo-comments.lua    # Highlight comments like TODO, WARN etc.
    ├── bootstrap.lua            # Install Pckr and setups plugins.
    ├── options.lua              # Neovim custom settings.
    └── plugins.lua              # Fetch every filename inside plugins/ for bootstrap.
```

