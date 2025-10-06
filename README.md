# Neovim-dotfiles
My Neovim setup, fully tailored for **pure Python development**.

![Neovim](assets/neovim.png)
> **NOTE**: This setup defaults to a light colorscheme. Don't judge me.

## Default Leader Key
The default leader key is **Space**.

## Requirements
```
- Neovim v0.11
- pyright
- debugpy
```

## Python: Pyright Setup
By default, `pyright` is configured to look for a virtual environment named `.venv`
 inside `~/.config/nvim`, to set it up:
```bash
cd ~/.config/nvim
python -m venv .venv
source .venv/bin/activate
pip install pyright
```
Also, while the virtual environment is active, install `debugpy` to enable `nvim-dap`:
```bash
pip install debugpy
```

## Nvim-DAP: Setup
Sometimes errors appear when installing `nvim-dap` for the first time, if this
 is the case:
**1.** Install `nvim-dap` first.
**2.** Then install its dependencies.

## SSHFS: Mount and Unmount (for local Neovim development)
```bash
cd /mnt
mkdir project
sudo chown $USER:$USER /mnt/project
chmod 777 /mnt/notebook

sshfs -o uid=1000,gid=1000,allow_other,default_permissions,umask=0022 user@host:/project_path /mnt/project

sudo fusermount -u /mnt/project
rm -rf /mnt/project
```

## Plugins Included
- **auto-save**: Because I'm too lazy to use `:w` all the time.
- **auto-session**: Automatic session management, saves and restores workspaces.
- **barbar**: Visual tabs for buffers.
- **catppuccin**: Best colorscheme in the world.
- **confirm-quit**: Prevents accidentally exiting Neovim without saving.
- **coq_nvim**: Autocompletion.
- **gitsign**: Git integration.
- **indent-blankline**: Visual identation guides.
- **lualine**: Beautiful statusline.
- **nvim-dap**: Debugging.
- **nvim-tree**: File explorer. (Use g? to see the keys)
- **nvim-treesitter-context**: Sticky context.
- **nvim-treesitter**: Better highlighting and parsing.
- **nvim-web-devicons**: Icons.
- **telescope**: Fuzzy finder.
- **todo-comments**: Highlight TODOs.
- **which-key**: Helps me remember my mappings.

> **MISSING**: Something to automate SSHFS/SSH remote development.
