-- ================================================================================================
-- TITLE : rustaceanvim
-- ABOUT : A heavily modified fork of rust-tools.nvim
-- LINKS :
--   > github : https://github.com/mrcjkb/rustaceanvim
-- ================================================================================================
local config = require("servers.rust-analyzer").config

return {
	"mrcjkb/rustaceanvim",
	version = "^6",
	lazy = false,
	config = config,
}
