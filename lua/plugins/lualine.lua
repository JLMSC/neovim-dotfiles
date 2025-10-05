return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
	"nvim-tree/nvim-web-devicons",
    },
    opts = {
	sections = {
	    lualine_x = {
		function ()
		    return require("auto-session.lib").current_session_name(true)
		end,
	    },
	},
    },
}
