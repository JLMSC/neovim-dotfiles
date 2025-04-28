# Neovim-dotfiles
My neovim custom dotfiles.

## Requirements
- Neovim >= 0.9

## Structure
```
nvim/
├── init.lua                     # Runs options and bootstrap.
└── lua/                         # Lua scripts.
    ├── plugins/                 # Plugins scripts.
    │   ├── catppuccin.lua       # Colorscheme.
    │   ├── markdown-preview.lua # Markdown preview utility.
    │   ├── nvim-colorizer.lua   # Highlight color codes.
    │   └── todo-comments.lua    # Highlight comments like TODO, WARN etc.
    ├── bootstrap.lua            # Install Pckr and setups plugins.
    ├── options.lua              # Neovim custom settings.
    └── plugins.lua              # Fetch every filename inside plugins/ for bootstrap.
```

