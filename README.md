# Neovim-dotfiles
My neovim custom dotfiles.

*Kindly be informed that the default configuration utilizes a light theme
 by default.*

## Requirements
- Neovim v0.11
- pyright (Optional)

## Structure
```
nvim/
├── init.lua                       # Runs 'lua/settings/' and 'lua/bootstrap/'.
├── README.md                      # I don't know what this one does, do you?.
├── after/                         # Overrule default settings.
│   └── ftplugin/                  # Filetype plugins.
│       └── python.lua             # Custom Python identation.
├── lsp/                           # Custom settings for LSP.
│   └── pyright.lua                # Custom settings for pyright LSP.
└── lua/                           # Lua scripts.
    ├── lsp/                       # Custom settings for Neovim LSP.
    │   ├── init.lua               # Enables every lsp in 'lsp/' and runs every file inside 'lua/lsp/'.
    │   ├── completion.lua         # Custom settings for Neovim LSP completions.
    │   └── diagnostic.lua         # Custom settings for Neovim LSP diagnostics.
    ├── plugins/                   # Plugins scripts.
    │   ├── init.lua               # Get the name of every file inside 'plugins/' and returns it.
    │   ├── catppuccin.lua         # Colorscheme.
    │   ├── gitsigns.lua           # Git integration for buffers.
    │   ├── markdown-preview.lua   # Markdown preview utility.
    │   ├── neoscroll.lua          # Smooth scrolling.
    │   ├── nvim-colorizer.lua     # Highlight color codes.
    │   ├── nvim-treesitter.lua    # Syntax highlight.
    │   ├── nvim-web-devicons.lua  # Nerd font icons.
    │   └── todo-comments.lua      # Highlight comments like TODO, WARN etc.
    ├── settings/                  # Neovim settings.
    │   ├── init.lua               # Runs every file inside 'settings/'.
    │   ├── autocmds.lua           # Defines custom auto commands.
    │   ├── general.lua            # Configures common settings.
    │   ├── indent.lua             # Configures global indentation.
    │   ├── keybinds.lua           # Configures custom keybinds.
    │   └── statusline.lua         # Defines a custom statuslines.
    └── bootstrap.lua              # Install Pckr and setups plugins.
```

## About the colorscheme
If you want to use another colorscheme instead of `catppuccin`, you **WILL**
 need to create the same highlight groups that were defined inside
 `lua/plugins/catppuccin.lua` somewhere to match your preferred colorscheme.

## About pyright
By default, `pyright` is configured to use a `.venv` within this folder. That
 means it is installed inside this `.venv` rather than global pip, you can
 achieve this by doing the following:
```bash
> python -m venv .venv
> source .venv/bin/activate
> pip install pyright
```
If you don't want to, you can change its behavior in `lsp/pyright.lua`.

## TO-DOs
- [ ] Add a fallback to `nvim-web-devicons` in the statusline, should default
 to `%Y`, `""` or something.
- [ ] Add screenshots of my setup, this can make someone's day easier.
- [ ] Find a way to show a colorcolumn for indents, I get lost a ton.
- [ ] Add a fold thingy.
- [ ] Be happy about my nvim config.
