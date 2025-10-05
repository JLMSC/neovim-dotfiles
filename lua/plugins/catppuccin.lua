return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
	flavour = "latte",
	show_end_of_buffer = true,
	term_colors = true,
	auto_integrations = true,
	custom_highlights = function (colors)
	    return {
            BufferCurrent = {
                bg = colors.base,
            },
            BufferCurrentIndex = {
                bg = colors.base,
            },
            BufferCurrentMod = {
                bg = colors.base,
            },
            BufferCurrentSign = {
                bg = colors.base,
            },
            BufferCurrentTarget = {
                bg = colors.base,
            },
            BufferVisible = {
                bg = colors.surface0,
            },
            BufferVisibleIndex = {
                bg = colors.surface0,
            },
            BufferVisibleMod = {
                bg = colors.surface0,
            },
            BufferVisibleSign = {
                bg = colors.surface0,
            },
            BufferVisibleTarget = {
                bg = colors.surface0,
                },
            BufferInactive = {
                bg = colors.surface0,
                fg = colors.overlay2,
            },
            BufferInactiveIndex = {
                bg = colors.surface0,
            },
            BufferInactiveMod = {
                bg = colors.surface0,
            },
            BufferInactiveSign = {
                bg = colors.surface0,
            },
            BufferInactiveTarget = {
                bg = colors.surface0,
                },
            BufferTabpages = {
                bg = colors.surface0,
                fg = colors.none,
            },
            BufferTabpage = {
                bg = colors.surface0,
                fg = colors.blue,
            },
	    }
	end,
    },
    config = function(_, opts)
	require("catppuccin").setup(opts)
	vim.cmd.colorscheme("catppuccin")
    end,
}
